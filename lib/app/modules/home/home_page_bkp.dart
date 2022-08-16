import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdinamico/app/modules/home/home_routes.dart';

import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Row(
        children: [
          Visibility(
              visible: !context.isPhone,
              child: Obx(
                () => NavigationRail(
                  labelType: NavigationRailLabelType.selected,
                  onDestinationSelected: (index) => controller.updateIndex(index),
                  selectedIndex: controller.selectedIndex,
                  destinations: controller.menu.map((menu) => NavigationRailDestination(icon: Icon(menu.icone), label: Text(menu.label))).toList(),
                ),
              )),
          Expanded(
            child: Navigator(
              initialRoute: controller.menu.first.route,
              key: Get.nestedKey(controller.indexNested),
              onGenerateRoute: ((settings) => HomeRoutes.generateRoutes(settings)),
              observers: [GetObserver((__) {}, Get.routing)],
            ),
          )
        ],
      ),
      bottomNavigationBar: Visibility(
        visible: context.isPhone,
        child: Obx(() => BottomNavigationBar(
              showUnselectedLabels: false,
              currentIndex: controller.selectedIndex,
              onTap: (index) => controller.updateIndex(index),
              items: controller.menu.map((menu) => BottomNavigationBarItem(icon: Icon(menu.icone), label: menu.label)).toList(),
            )),
      ),
    );
  }
}

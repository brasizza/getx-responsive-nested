import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getxdinamico/app/modules/home/home_controller.dart';

class NavigationDrawerPage extends StatelessWidget {
  final HomeController controller;

  const NavigationDrawerPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Drawer(
          child: Column(
              children: controller.menu.asMap().entries.map((menu) {
        return ListTile(
          selected: controller.selectedIndex == menu.key,
          leading: Icon(menu.value.icone),
          title: Text(menu.value.label),
          onTap: () {
            controller.updateIndex(menu.key);
            Get.close(0);
          },
        );
      }).toList()

              //  controller.menu.value
              //     .asMap().entries

              //     .map((index, menu) => ListTile(
              //           leading: Icon(menu.icone),
              //           title: Text(menu.label),
              //         ))
              //     .toList()),
              )),
    );
  }
}

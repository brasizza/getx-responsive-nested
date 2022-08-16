import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdinamico/app/modules/home/components/navigation_bottom_page.dart';
import 'package:getxdinamico/app/modules/home/components/navigation_drawer.dart';
import 'package:getxdinamico/app/modules/home/components/navigation_rail_page.dart';
import 'package:getxdinamico/app/modules/home/components/navigator_page.dart';

import './home_controller.dart';

class HomePage extends GetResponsiveView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget? watch() {
    return Scaffold(
      drawer: NavigationDrawerPage(controller: controller),
      appBar: AppBar(
        title: const Text('Menor'),
      ),
      body: NavigatorPage(controller: controller),
    );
  }

  @override
  Widget? desktop() {
    return Scaffold(
        appBar: AppBar(
          title: const Text('desktop'),
        ),
        body: Row(
          children: [
            NavigationRailPage(
              controller: controller,
            ),
            Expanded(
              child: NavigatorPage(controller: controller),
            )
          ],
        ));
  }

  @override
  Widget? phone() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('phone'),
      ),
      body: NavigatorPage(controller: controller),
      bottomSheet: NavigationBottomPage(controller: controller),
    );
  }

  @override
  Widget? tablet() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tablet'),
      ),
      body: NavigatorPage(controller: controller),
      bottomSheet: NavigationBottomPage(controller: controller),
    );
  }
}

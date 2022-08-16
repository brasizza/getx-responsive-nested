import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getxdinamico/app/modules/home/home_controller.dart';
import 'package:getxdinamico/app/modules/home/home_routes.dart';

class NavigatorPage extends StatelessWidget {
  final HomeController controller;

  const NavigatorPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: controller.menu.first.route,
      key: Get.nestedKey(controller.indexNested),
      onGenerateRoute: ((settings) => HomeRoutes.generateRoutes(settings)),
      observers: [GetObserver((__) {}, Get.routing)],
    );
  }
}

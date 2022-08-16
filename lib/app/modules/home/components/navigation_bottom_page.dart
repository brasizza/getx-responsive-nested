import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getxdinamico/app/modules/home/home_controller.dart';

class NavigationBottomPage extends StatelessWidget {
  final HomeController controller;

  const NavigationBottomPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          showUnselectedLabels: false,
          currentIndex: controller.selectedIndex,
          onTap: (index) => controller.updateIndex(index),
          items: controller.menu.map((menu) => BottomNavigationBarItem(icon: Icon(menu.icone), label: menu.label)).toList(),
        ));
  }
}

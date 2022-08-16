import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getxdinamico/app/modules/home/home_controller.dart';

class NavigationRailPage extends StatelessWidget {
  final HomeController controller;
  const NavigationRailPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => NavigationRail(
        labelType: NavigationRailLabelType.selected,
        onDestinationSelected: (index) => controller.updateIndex(index),
        selectedIndex: controller.selectedIndex,
        destinations: controller.menu
            .map(
              (menu) => NavigationRailDestination(
                icon: Icon(menu.icone),
                label: Text(menu.label),
              ),
            )
            .toList(),
      ),
    );
  }
}

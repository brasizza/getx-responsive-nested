import 'package:flutter/material.dart';
import 'package:getxdinamico/app/data/models/menu_model.dart';

import './menu_repository.dart';

class MenuRepositoryStatic implements MenuRepository {
  @override
  List<MenuModel> getMenu() {
    return [
      MenuModel(id: 4, label: 'User', route: '/user', icone: Icons.person_add_alt_sharp),
      MenuModel(id: 7, label: 'Settings', route: '/settings', icone: Icons.settings),
      MenuModel(id: 0, label: 'Home', route: '/home', icone: Icons.home),
    ];
  }
}

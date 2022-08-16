import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getxdinamico/app/modules/home/components/home.dart';
import 'package:getxdinamico/app/modules/home/home_bindings.dart';
import 'package:getxdinamico/app/modules/home/home_page.dart';
import 'package:getxdinamico/app/modules/settings/settings_bindings.dart';
import 'package:getxdinamico/app/modules/settings/settings_page.dart';
import 'package:getxdinamico/app/modules/user/user_bindings.dart';
import 'package:getxdinamico/app/modules/user/user_page.dart';

class HomeRoutes {
  HomeRoutes._();
  static final pages = [
    GetPage(
      name: '/',
      page: () => HomePage(),
      binding: HomeBindings(),
    )
  ];

  static generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return GetPageRoute(
          settings: settings,
          page: () => const Home(),
        );

      case '/settings':
        return GetPageRoute(
          settings: settings,
          page: () => const SettingsPage(),
          binding: SettingsBindings(),
        );

      case '/user':
        return GetPageRoute(
          settings: settings,
          page: () => const UserPage(),
          binding: UserBindings(),
        );

      default:
        return GetPageRoute(
          settings: settings,
          page: () => const Home(),
        );
    }
  }
}

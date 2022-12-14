import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getxdinamico/app/modules/home/home_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [...HomeRoutes.pages],
    );
  }
}

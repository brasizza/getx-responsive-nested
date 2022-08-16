import 'package:get/get.dart';
import 'package:getxdinamico/app/data/repositories/menu_repository.dart';
import 'package:getxdinamico/app/data/repositories/menu_repository_static.dart';

import './home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuRepository>(() => MenuRepositoryStatic());
    Get.put(HomeController(repository: Get.find()));
  }
}

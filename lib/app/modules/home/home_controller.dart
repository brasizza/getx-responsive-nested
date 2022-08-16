// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:getxdinamico/app/data/models/menu_model.dart';
import 'package:getxdinamico/app/data/repositories/menu_repository.dart';

class HomeController extends GetxController {
  final MenuRepository _repository;

  final menu = <MenuModel>[].obs;
  HomeController({
    required MenuRepository repository,
  }) : _repository = repository;

  @override
  void onInit() {
    final menuRepoisitory = _repository.getMenu();
    menuRepoisitory.sort(((a, b) => a.id > b.id ? 1 : 0));
    menu
      ..clear()
      ..addAll(menuRepoisitory);
    super.onInit();
  }

  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  final indexNested = 1;

  void updateIndex(int index) {
    _selectedIndex(index);
    Get.offNamed(menu[index].route, id: indexNested);
  }
}

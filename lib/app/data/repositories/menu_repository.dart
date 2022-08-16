import 'package:getxdinamico/app/data/models/menu_model.dart';

abstract class MenuRepository {
  List<MenuModel> getMenu();
}

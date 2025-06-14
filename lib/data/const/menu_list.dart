import '../../models/menu_model.dart';
import '../../routes/app_routes.dart';

List<MenuModel> get homeMenuList {
  return [MenuModel(name: 'Counter', route: Routes.COUNTER)];
}

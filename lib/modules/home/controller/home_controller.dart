import 'package:flutter/material.dart';

import '../../../data/const/menu_list.dart';
import '../../../models/menu_model.dart';

class HomeController {
  final List<MenuModel> menuList = homeMenuList;

  void onTapMenu(BuildContext context, MenuModel model) {
    // Handle menu tap
    if (model.route == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No route defined for ${model.name}')),
      );
      return;
    }
    Navigator.pushNamed(context, model.route!, arguments: model);
  }
}

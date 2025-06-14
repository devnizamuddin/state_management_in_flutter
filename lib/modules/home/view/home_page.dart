import 'package:flutter/material.dart';

import '../../../models/menu_model.dart';
import '../controller/home_controller.dart';
import '../widgets/menu_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Management In Flutter')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            child: Text('Welcome to learning with Dev Nizam Uddin'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: controller.menuList.length,
                itemBuilder: (context, index) {
                  final MenuModel model = controller.menuList[index];
                  return MenuWidget(
                    onTap: () {
                      controller.onTapMenu(context, model);
                    },
                    title: model.name,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

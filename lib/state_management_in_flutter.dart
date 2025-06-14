import 'package:flutter/material.dart';

import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

class StateManagementInFlutter extends StatelessWidget {
  const StateManagementInFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Management In Flutter',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      initialRoute: Routes.INITIAL,
      routes: AppRoutesDestination.routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:state_management_in_flutter/home_page.dart';

class StateManagementInFlutter extends StatelessWidget {
  const StateManagementInFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Management In Flutter',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

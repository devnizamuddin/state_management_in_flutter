import 'package:flutter/material.dart';
import '../getx_example/counter/counter_page.dart';
import '../modules/home/view/home_page.dart';
import 'app_routes.dart';

class AppRoutesDestination {
  static Map<String, WidgetBuilder> get routes {
    return {
      Routes.INITIAL: (context) => const HomePage(),
      Routes.COUNTER: (context) => const CounterPage(),
    };
  }
}

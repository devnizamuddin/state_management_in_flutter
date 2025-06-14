import 'package:state_management_in_flutter/getx/rx.dart';

class CounterController {
  Rx<int> counter = Rx(0);
  void increment() {
    counter.value++;
  }
}

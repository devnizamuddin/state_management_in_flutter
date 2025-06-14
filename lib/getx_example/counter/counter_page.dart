import 'package:flutter/material.dart';

import 'counter_controller.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final CounterController controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Example')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            controller.increment();
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${controller.counter}', style: const TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}

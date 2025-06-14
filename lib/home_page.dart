import 'package:flutter/material.dart';
import 'package:state_management_in_flutter/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Management In Flutter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to the Home Page!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.COUNTER);
              },
              child: const Text('Go to Counter Example'),
            ),
          ],
        ),
      ),
    );
  }
}

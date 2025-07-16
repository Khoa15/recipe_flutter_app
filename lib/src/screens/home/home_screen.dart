import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to the Home Screen!'),
            ElevatedButton(
              onPressed: () {
                // Navigate to another screen or perform an action
              },
              child: const Text('Go to Recipes'),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SaveRecipesScreen extends StatelessWidget {
  const SaveRecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to the Save Recipes Screen!'),
          ],
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String user;

  FoodItem({required this.imageUrl, required this.name, required this.price, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // leading: Image.network(imageUrl),
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(price),
            Text(user),
          ],
        ),
      ),
    );
  }
}
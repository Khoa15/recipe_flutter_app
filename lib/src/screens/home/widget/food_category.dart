import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/src/screens/home/widget/food_item.dart';

class FoodCategory extends StatelessWidget {
  final String title;
  final List<FoodItem> items;
  const FoodCategory({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 252),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // SizedBox(height: 30),
                ...(items).map(
                  (item) => item,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

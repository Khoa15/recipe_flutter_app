import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String user;

  FoodItem({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // Or some other container for the food item
      child: SizedBox(
        // Often a good idea to give explicit size when dealing with fixed-size items in a list
        width: 150, // Example width, adjust as needed
        child: Column(
          children: [
            Image.network(
              imageUrl,
              height: 100,
              width: 150,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                // You can print the error for debugging:
                // debugPrint('Image loading error: $error');
                return Container(
                  color: Colors.grey[300],
                  child: Center(
                    child: Icon(
                      Icons.broken_image,
                      size: 50,
                      color: Colors.grey[600],
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0), // Adjust padding as desired
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text(
                    price,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    user,
                    style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

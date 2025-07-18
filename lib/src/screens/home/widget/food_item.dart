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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 4,
      child: SizedBox(
        width: 206,
        height: 252,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  imageUrl,
                  height: 140,
                  width: 206,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 140,
                      width: 206,
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
                if (5 > 0)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.star, color: Colors.white, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            "5",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                // if (true)
                //   Positioned.fill(
                //     child: Center(
                //       child: Container(
                //         decoration: BoxDecoration(
                //           color: const Color.fromARGB(104, 0, 0, 0),
                //           shape: BoxShape.circle,
                //         ),
                //         child: const Icon(
                //           Icons.play_arrow,
                //           color: Colors.white,
                //           size: 60,
                //         ),
                //       ),
                //     ),
                //   ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1 tiếng 20 phút",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey[600],
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.grey[600],
                          size: 16,
                        ),
                      ],
                    ),
                    // const SizedBox(height: 8),
                    // Recipe Name
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    // const SizedBox(height: 8),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12, // Smaller avatar
                          backgroundImage: NetworkImage(imageUrl),
                          onBackgroundImageError: (exception, stackTrace) {
                            // Fallback for avatar image loading errors
                            debugPrint('Avatar loading error: $exception');
                          },
                          child:
                              (imageUrl.isEmpty ||
                                  imageUrl == 'https://placehold.co/24')
                              ? const Icon(
                                  Icons.person,
                                  size: 16,
                                  color: Colors.white,
                                ) // Fallback icon
                              : null,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "Đinh Trọng Phúc",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

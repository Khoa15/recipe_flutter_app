import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String imageUrl = 'https://fpoimg.com/206x140?text=Preview&bg_color=e6e6e6&text_color=8F8F8F';
  final String name = 'Cách chiên trứng một cách cung phu';
  final String user = 'Đinh Trọng Phước';
  const FoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 1,
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
                            color: Color.fromARGB(255, 0, 67, 179),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
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
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 24, 27, 24),
                        fontFamily: 'inter',
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
                            color: Color.fromARGB(255, 206, 167, 0),
                            fontWeight: FontWeight.w600,
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

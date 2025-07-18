import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 213,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Card(
              color: const Color(0xFFFBF4E4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 10,
                  right: 10,
                  bottom: 12,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Trứng chiên',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 115, 76, 16),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Tạo bởi',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 67, 40, 5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Trần Đình Trọng',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 67, 40, 5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '20 phút',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF8A5F2C),
                          ),
                        ),
                        Icon(
                          Icons.description,
                          size: 22,
                          color: Color(0xFF8A5F2C),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 35,
            child: ClipOval(
              child: Image.network(
                'https://fpoimg.com/206x140?text=Preview&bg_color=e6e6e6&text_color=8F8F8F',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

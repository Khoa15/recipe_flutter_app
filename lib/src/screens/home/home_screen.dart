import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/src/screens/home/widget/food_category.dart';
import 'package:flutter_recipe_app/src/screens/home/widget/food_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Tìm kiếm sản phẩm',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
        actions: [IconButton(icon: Icon(Icons.filter_list), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FoodCategory(
              title: 'TP. Hồ Chí Minh',
              items: [
                FoodItem(
                  imageUrl: 'https://placehold.co/150',
                  name: 'It\'s that simple',
                  price: 'Cảch ăn trong vòng mất cảch ăn',
                  user: 'Đinh Trọng Phước',
                ),
                FoodItem(
                  imageUrl: 'https://placehold.co/150',
                  name: 'It\'s that simple',
                  price: 'Cảch ăn trong vòng mất cảch ăn',
                  user: 'Đinh Trọng Phước',
                ),
              ],
            ),
            FoodCategory(
              title: 'Đánh giá',
              items: [
                FoodItem(
                  imageUrl: 'https://placehold.co/150',
                  name: 'Trứng chiên',
                  price: '20 phút',
                  user: 'Trần Đinh Trọng',
                ),
                FoodItem(
                  imageUrl: 'https://placehold.co/150',
                  name: 'Trứng chiên',
                  price: '20 phút',
                  user: 'Trần Đinh Trọng',
                ),
              ],
            ),
            FoodCategory(
              title: 'Cơng thức ăn ngày',
              items: [
                FoodItem(
                  imageUrl: 'https://placehold.co/150',
                  name: 'Trứng chiên',
                  price: '',
                  user: 'Nguyễn Đinh Trọng',
                ),
                FoodItem(
                  imageUrl: 'https://placehold.co/150',
                  name: 'Trứng chiên',
                  price: '',
                  user: 'Nguyễn Đinh Trọng',
                ),
              ],
            ),
            FoodCategory(
              title: 'Nguyên liệu',
              items: [
                FoodItem(
                  imageUrl: 'https://placehold.co/150',
                  name: 'Đánh giá 1',
                  price: '',
                  user: 'Đinh Trọng',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

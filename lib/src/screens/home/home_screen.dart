import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/src/screens/home/widget/food_category.dart';
import 'package:flutter_recipe_app/src/screens/home/widget/food_item.dart';
import 'package:flutter_recipe_app/src/utils/common/btn_category.dart';
import 'package:flutter_recipe_app/src/utils/common/profile_card.dart';

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
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight:
                MediaQuery.of(context).size.height -
                kToolbarHeight -
                kBottomNavigationBarHeight,
          ),
          child: Column(
            children: [
              FoodCategory(
                title: 'TP. Hồ Chí Minh',
                items: [
                  FoodItem(),
                  FoodItem(),
                  FoodItem(),
                  FoodItem(),
                  FoodItem(),
                  FoodItem(),
                  FoodItem(),
                  FoodItem(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Danh mục',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text('Xem tất cả')),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 35),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 213),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ProfileCard(),
                          ProfileCard(),
                          ProfileCard(),
                          ProfileCard(),
                          ProfileCard(),
                          ProfileCard(),
                          ProfileCard(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Công thức gần đây',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text('Xem tất cả')),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 35),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 213),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ProfileCard(),
                          ProfileCard(),
                          ProfileCard(),
                          ProfileCard(),
                          ProfileCard(),
                          ProfileCard(),
                          ProfileCard(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Nguyên liệu',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text('Xem tất cả')),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 35),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 35),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                          ButtonCategory(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

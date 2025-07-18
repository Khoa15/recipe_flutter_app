import 'package:flutter/material.dart';
import 'package:go_router/src/route.dart';

class BottomNavigation extends StatefulWidget{
  final StatefulNavigationShell child;
  const BottomNavigation({super.key, required this.child});
  @override
  State<StatefulWidget> createState() => _BottomNavigationState();

}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    widget.child.goBranch(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(child: widget.child)
            ],
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () => _onItemTapped(2), // Assuming index 2 is for the Recipe page
          child: const Icon(Icons.add),
        )
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Color.fromARGB(255, 206, 168, 0),),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => _onItemTapped(1),
            ),
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
      // BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bookmark_border),
      //       label: 'Recipe',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   type: BottomNavigationBarType.fixed,

      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      // ),
    );
  }
}
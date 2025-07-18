import 'package:flutter/material.dart';

class ButtonCategory extends StatelessWidget {
  const ButtonCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0), // <--- Thêm padding bên phải
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Color.fromARGB(255, 206, 167, 0),
          minimumSize: Size(86, 25),
        ),
        onPressed: () => {},
        child: const Text(
          'Danh mục',
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search or enter a code',
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            contentPadding: const EdgeInsets.only(top: 15),
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.menu),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/logo/flutter scripter.png',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: file_names
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
      selectedItemColor: Colors.yellow,
      unselectedItemColor: const Color.fromARGB(255, 24, 142, 163),
      currentIndex: currentIndex,
      onTap: onTap, // Call the onTap function passed from the parent
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'My Test',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'My Course',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics),
          label: 'Analytics',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      selectedIconTheme: const IconThemeData(color: Colors.yellow),
      unselectedIconTheme:
          const IconThemeData(color: Color.fromARGB(255, 24, 142, 163)),
    );
  }
}

import 'package:flutter/material.dart';
import '../../utils/navigation_helper.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(33, 150, 243, 1),
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Color.fromARGB(255, 24, 142, 163),
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
      selectedIconTheme: IconThemeData(color: Colors.yellow),
      unselectedIconTheme:
          IconThemeData(color: Color.fromARGB(255, 24, 142, 163)),
    );
  }
}

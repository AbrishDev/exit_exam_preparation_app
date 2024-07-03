import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../utils/color_assets.dart';

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
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: ColorAssets.bduColor,
      height: 50,
      index: currentIndex,
      onTap: onTap,
      items: const <Widget>[
        Icon(Icons.home),
        Icon(Icons.message),
        Icon(Icons.school),
        Icon(Icons.analytics),
        Icon(Icons.person),
      ],
    );
  }
}

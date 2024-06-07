import 'package:flutter/material.dart';

void navigateTo(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushNamed(context, '/home');
      break;
    case 1:
      Navigator.pushNamed(context, '/mytest');
      break;
    case 2:
      Navigator.pushNamed(context, '/mycourse');
      break;
    case 3:
      Navigator.pushNamed(context, '/analytics');
      break;
    case 4:
      Navigator.pushNamed(context, '/profile');
      break;
  }
}

import 'package:flutter/material.dart';
import './Presentation/screens/splashScreen.dart';
import 'Presentation/Screens/homeScreen.dart';
import 'Presentation/Screens/courseScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash', // Set initial route to splash screen
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/mytest': (context) => HomeScreen(),
        '/mycourse': (context) => MyCourse(),
        '/analytics': (context) => HomeScreen(),
        '/profile': (context) => HomeScreen(), // Route for home screen
      },
    );
  }
}

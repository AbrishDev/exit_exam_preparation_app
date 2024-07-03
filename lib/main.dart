import 'package:flutter/material.dart';
import './Screens/splash_screen.dart';
import 'Screens/analytics/analytics_screen.dart';
import 'Screens/home/home_screen.dart';
import 'Screens/course/course_screen.dart';
import 'Screens/profile/profile_screen.dart';
import 'Screens/tests/exam_screen.dart';

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
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/mytest': (context) => const ExamQuestionsScreen(),
        '/mycourse': (context) => const MyCourse(),
        '/analytics': (context) => const AnalyticsScreen(),
        '/profile': (context) => const ProfileScreen(), // Route for home screen
      },
    );
  }
}

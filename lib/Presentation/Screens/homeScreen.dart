// ignore: file_names
import 'package:flutter/material.dart';
import '../Widgets/AppHeader.dart';
import '../Widgets/appBottomNavBar.dart';
import '../Widgets/appDrawer.dart';
import '../Widgets/imageCarousel.dart';
import '../Widgets/exploreSection.dart';
import '../Widgets/newCourseSection.dart';
import '../Screens/courseScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'selamta App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(), // Route for the home page
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;
  int _currentIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 2) {
        // If "My Course" button is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyCourse()), // Navigate to CourseScreen
        );
      } else if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const HomeScreen()), // Navigate to CourseScreen
        );
        // Handle other button taps
      } else if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyCourse()), // Navigate to CourseScreen
        );
      } else if (index == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyCourse()), // Navigate to CourseScreen
        );
      } else if (index == 4) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyCourse()), // Navigate to CourseScreen
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: const AppHeader(
        title: 'BiT Learning Platform',
      ),
      drawer: AppDrawer(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ImageCarousel(),
            SecondSection(),
            NewCoursesSection(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavBarTapped,
      ),
    );
  }
}

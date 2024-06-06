// ignore: file_names
import 'package:flutter/material.dart';
import '../Widgets/AppHeader.dart';
import '../Widgets/appBottomNavBar.dart';
import '../Widgets/appDrawer.dart';
import '../Widgets/imageCarousel.dart';
import '../Widgets/exploreSection.dart';
import '../Widgets/newCourseSection.dart';

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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

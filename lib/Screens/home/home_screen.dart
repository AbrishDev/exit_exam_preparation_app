import 'package:flutter/material.dart';
import '../../Widgets/App_bar.dart';
import '../../Widgets/bottom_navbar.dart';
import '../../Widgets/app_drawer.dart';
import '../../Widgets/image_carousel.dart';
import '../../Widgets/explore_section.dart';
import '../../Widgets/new_course_section.dart';
import '../../utils/navigation_helper.dart';

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
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: const AppHeader(
        title: 'BiTech',
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
        // ignore: avoid_types_as_parameter_names
        currentIndex: 0,
        onTap: (index) => navigateTo(context, index),
      ),
    );
  }
}

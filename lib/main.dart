import 'package:flutter/material.dart';
import './Presentation/screens/splashScreen.dart';

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
        '/splash': (context) => const SplashScreen(), // Route for home screen
      },
    );
  }
}

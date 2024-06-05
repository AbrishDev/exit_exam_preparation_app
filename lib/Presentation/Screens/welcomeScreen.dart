// ignore: file_names
import 'package:flutter/material.dart';
import 'signupScreen.dart';
import 'loginScreen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Image.asset(
                'assets/images/image.png', // Replace 'assets/logo.png' with your logo image path
                width: 200.0,
                height: 200.0,
                // Adjust width and height according to your logo size
              ),
            ),
            const SizedBox(height: 50.0),
            const Text(
              'GET WELL PREPARED',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Take Quizes, analyze your performance\n Get ready based on you current level and\n nail the exit exam.',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            const SizedBox(height: 40.0),
            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sign up button
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                    );
                  },
                  // ignore: sort_child_properties_last
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                // Log in button
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignInScreen()),
                    );
                  },
                  // ignore: sort_child_properties_last
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

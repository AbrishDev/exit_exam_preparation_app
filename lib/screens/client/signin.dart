import 'package:exit_exam_preparation_app/screens/client/home.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Login to Selamta',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome back! Sign in using your social media account',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/images/facebook.png',
                    width: 50,
                    height: 50,
                  ), // Change this path to your Facebook icon asset
                  onPressed: () {
                    // Handle Facebook sign-in
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/google.png',
                    width: 50,
                    height: 50,
                  ), // Change this path to your Google icon asset
                  onPressed: () {
                    // Handle Google sign-in
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'or',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                // Set the background color to green
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle "Forgot Password" button press
                  },
                  child: Text('Forgot Password?'),
                ),
                Text(' | '),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text('Create Account'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SignInScreen(),
  ));
}

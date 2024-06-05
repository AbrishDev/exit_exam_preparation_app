// ignore: file_names
import 'package:exit_exam_preparation_app/Presentation/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';

const List<String> listOne = <String>['SE', 'CS', 'IS', 'IT'];
const List<String> listTwo = <String>['Male', 'Female', 'NotDecided'];

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Create Account',
              style: TextStyle(fontSize: 22, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Create a new account',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Gender',
                prefixIcon: Icon(Icons.male),
              ),
              items: listTwo.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
              onChanged: (String) {
                // Handle dropdown value change here
              },
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: 'ID Number',
                prefixIcon: Icon(Icons.person),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Department',
                prefixIcon: Icon(Icons.person),
              ),
              items: listOne.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
              onChanged: (String) {
                // Handle dropdown value change here
              },
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              // ignore: sort_child_properties_last
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const Text(
              'Already have an account?',
              style: TextStyle(fontSize: 14, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                );
              },
              child: const Text('login'),
            ),
          ],
        ),
      ),
    );
  }
}

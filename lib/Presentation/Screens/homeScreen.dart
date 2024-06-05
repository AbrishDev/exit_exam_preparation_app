// ignore: file_names
import 'package:flutter/material.dart';

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

  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(),
          textAlign: TextAlign.center,
        ),
        backgroundColor:
            Colors.blue, // Set the background color of AppBar to blue
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Department of Computer Science',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                // Handle Home tap
              },
            ),
            ListTile(
              title: const Text('Analytics'),
              leading: const Icon(Icons.analytics),
              onTap: () {
                // Handle Analytics tap
              },
            ),
            ListTile(
              title: const Text('Reminder'),
              leading: const Icon(Icons.notifications),
              onTap: () {
                // Handle Reminder tap
              },
            ),
            ListTile(
              title: const Text('Messages'),
              leading: const Icon(Icons.message),
              onTap: () {
                // Handle Messages tap
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {
                // Handle Settings tap
              },
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout),
              onTap: () {
                // Handle Logout tap
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  const Text(
                    'Yearly Exams >',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: OutlinedButton(
                          onPressed: () {
                            // Handle button 1 press
                          },
                          child: const Text('Exam 2015'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: OutlinedButton(
                          onPressed: () {
                            // Handle button 2 press
                          },
                          child: const Text('Exam 2015'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: OutlinedButton(
                          onPressed: () {
                            // Handle button 3 press
                          },
                          child: const Text('Exam 2016'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: OutlinedButton(
                          onPressed: () {
                            // Handle button 4 press
                          },
                          child: const Text('Exam 2014'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  const Text(
                    'Custom Exams >',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: OutlinedButton(
                          onPressed: () {
                            // Handle button 5 press
                          },
                          child: const Text('Exam 2017'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: OutlinedButton(
                          onPressed: () {
                            // Handle button 6 press
                          },
                          child: const Text('Exam 2018'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: OutlinedButton(
                          onPressed: () {
                            // Handle button 7 press
                          },
                          child: const Text('Exam 2019'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: OutlinedButton(
                          onPressed: () {
                            // Handle button 8 press
                          },
                          child: const Text('Exam 2020'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Set the icon
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), // Set the icon
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics), // Set the icon to analytics
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Set the icon
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green, // Change the color of selected icons
        unselectedItemColor: Colors.red, // Change the color of unselected icons
        onTap: _onItemTapped,
      ),
    );
  }
}

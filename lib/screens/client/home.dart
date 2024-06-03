import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'selamta App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
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
        title: Text(
          'Home',
          style: TextStyle(),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              color: isDarkMode ? Colors.black : Colors.blue,
              child: DrawerHeader(
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
            ),
            Divider(color: Colors.grey),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                // Handle Home tap
              },
            ),
            ListTile(
              title: Text('Analytics'),
              leading: Icon(Icons.analytics),
              onTap: () {
                // Handle Analytics tap
              },
            ),
            ListTile(
              title: Text('Reminder'),
              leading: Icon(Icons.notifications),
              onTap: () {
                // Handle Reminder tap
              },
            ),
            ListTile(
              title: Text('Messages'),
              leading: Icon(Icons.message),
              onTap: () {
                // Handle Messages tap
              },
            ),
            Divider(color: Colors.grey),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () {
                // Handle Settings tap
              },
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Previous Exit Exams',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle button 1 press
                      },
                      child: Text('Exam 2015'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button 2 press
                      },
                      child: Text('Exam 2015'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Model Exams',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle button 6 press
                      },
                      child: Text('Exam 2016'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button 7 press
                      },
                      child: Text('Exam 2015'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button 8 press
                      },
                      child: Text('Exam 2014'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Set the background color
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

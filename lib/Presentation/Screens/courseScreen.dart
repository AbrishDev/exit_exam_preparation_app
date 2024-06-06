import 'package:flutter/material.dart';
import '../Widgets/appHeader.dart'; // Import the CustomBottomNavBar widget
import '../Widgets/appBottomNavBar.dart';

class MyCourse extends StatefulWidget {
  @override
  _MyCourseState createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  bool _showVideos = true; // Track whether to show videos or notes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(title: 'BiT Learning Platform'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // First section with video and note buttons
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _showVideos = true; // Show videos
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white, // Text color
                  ),
                  child: Text('Videos'),
                ),
              ),
              SizedBox(width: 16), // Add spacing between buttons
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _showVideos = false; // Show notes
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white, // Text color
                  ),
                  child: Text('Notes'),
                ),
              ),
            ],
          ),

          // Second section with boxes for notes or videos
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // First section with video and note buttons
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _showVideos = true; // Show videos
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.blue,
                            backgroundColor: Colors.white, // Text color
                          ),
                          child: Text('Videos'),
                        ),
                      ),
                      SizedBox(width: 16), // Add spacing between buttons
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _showVideos = false; // Show notes
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.blue,
                            backgroundColor: Colors.white, // Text color
                          ),
                          child: Text('Notes'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      height: 16), // Add spacing between buttons and containers
                  // Second section with boxes for notes or videos
                  _buildContentSection(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 1, // Set the current index for the bottom nav bar
        onTap: (index) {
          // Handle bottom nav bar item taps
        },
      ),
    );
  }

  Widget _buildContentSection() {
    List<Widget> rows = [];
    final int itemCount = _showVideos ? 6 : 4; // Adjust item count as needed
    for (int i = 0; i < itemCount; i += 2) {
      rows.add(
        Row(
          children: [
            Expanded(
              child: _buildItemContainer(
                  _showVideos ? 'Video ${i + 1}' : 'Note ${i + 1}'),
            ),
            SizedBox(width: 16), // Add spacing between containers
            Expanded(
              child: i + 1 < itemCount
                  ? _buildItemContainer(
                      _showVideos ? 'Video ${i + 2}' : 'Note ${i + 2}')
                  : SizedBox(),
            ),
          ],
        ),
      );
      if (i + 2 < itemCount) {
        rows.add(SizedBox(height: 16)); // Add vertical spacing between rows
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: rows,
    );
  }

  Widget _buildItemContainer(String title) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(16),
      color: _showVideos ? Colors.blue[100] : Colors.yellow[100],
      child: Text(title),
    );
  }
}

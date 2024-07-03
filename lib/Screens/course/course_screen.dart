// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import '../../Widgets/bottom_navbar.dart';
import '../../Widgets/app_drawer.dart';
import '../../Widgets/app_bar.dart';
import '../../Widgets/videos_notes_row .dart';
import '../../utils/navigation_helper.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({super.key});

  @override
  _MyCourseState createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  bool _showVideos = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(title: 'BiTech'),
      drawer: AppDrawer(),
      body: Column(
        children: [
          VideosNotesRow(
            showVideos: _showVideos,
            onToggle: (bool show) {
              setState(() {
                _showVideos = show;
              });
            },
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount:
                  _showVideos ? 10 : 5, // Example number of videos or notes
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _showVideos ? 'Video ${index + 1}' : 'Note ${index + 1}',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 2,
        onTap: (index) => navigateTo(context, index),
      ),
    );
  }
}
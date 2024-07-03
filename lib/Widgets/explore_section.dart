import 'package:flutter/material.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Explore',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildItem(Icons.read_more, 'My Courses'),
              _buildItem(Icons.batch_prediction, 'All Batch'),
              _buildItem(Icons.text_snippet, 'Test series'),
              _buildItem(Icons.restore_rounded, 'Resources'),
              _buildItem(Icons.settings, 'Daily Quiz'),
              _buildItem(Icons.help, 'Downloads'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildItem(IconData iconData, String text) {
    return Container(
      width: 120,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, size: 40),
          const SizedBox(height: 8.0),
          Text(text, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

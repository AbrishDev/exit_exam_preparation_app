import 'package:flutter/material.dart';

class NewCoursesSection extends StatelessWidget {
  const NewCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New Courses',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CourseItem(
                icon: Icons.book,
                title: 'Course 1',
              ),
              CourseItem(
                icon: Icons.book,
                title: 'Course 2',
              ),
              CourseItem(
                icon: Icons.book,
                title: 'Course 3',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const CourseItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40,
          color: Colors.blue,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

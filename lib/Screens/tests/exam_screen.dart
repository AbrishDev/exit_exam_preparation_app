import 'package:flutter/material.dart';
import '../../Widgets/app_bar.dart';
import '../../Widgets/app_drawer.dart';
import '../../Widgets/bottom_navbar.dart';
import '../../utils/navigation_helper.dart';

class ExamQuestionsScreen extends StatefulWidget {
  const ExamQuestionsScreen({Key? key}) : super(key: key);

  @override
  _ExamQuestionsScreenState createState() => _ExamQuestionsScreenState();
}

class _ExamQuestionsScreenState extends State<ExamQuestionsScreen> {
  // Example questions and options (replace with actual data)
  final List<Map<String, dynamic>> examQuestions = [
    {
      'question': 'What is Flutter?',
      'options': ['A framework', 'A language', 'A platform', 'An IDE'],
      'correctIndex': 0, // Index of correct option
    },
    {
      'question': 'Who developed Flutter?',
      'options': ['Google', 'Apple', 'Microsoft', 'Facebook'],
      'correctIndex': 0,
    },
    // Add more questions as needed
  ];

  int currentIndex = 0; // Track current question index
  List<int> selectedAnswers = []; // Track selected answers

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(
        title: 'BiTech', // Set the title of the app bar
        // You can handle search text changes if needed
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${currentIndex + 1}: ${examQuestions[currentIndex]['question']}',
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Column(
              children: List.generate(
                examQuestions[currentIndex]['options'].length,
                (index) => RadioListTile<int>(
                  title: Text(examQuestions[currentIndex]['options'][index]),
                  value: index,
                  groupValue: selectedAnswers.length > currentIndex
                      ? selectedAnswers[currentIndex]
                      : null,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswers[currentIndex] = value!;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (currentIndex < examQuestions.length - 1) {
                    currentIndex++;
                  } else {
                    // Handle submission or navigation when all questions are answered
                    // Example: Navigator.pushReplacementNamed(context, '/result');
                  }
                });
              },
              child: Text(currentIndex < examQuestions.length - 1
                  ? 'Next Question'
                  : 'Submit'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 1, // Set current index for Exam tab
        onTap: (index) => navigateTo(context, index),
      ),
    );
  }
}


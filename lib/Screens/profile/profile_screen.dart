import 'package:flutter/material.dart';
import '../../Widgets/app_drawer.dart';
import '../../Widgets/bottom_navbar.dart';
import '../../Widgets/app_bar.dart';
import '../../utils/navigation_helper.dart';

// Profile Screen Widget
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Mock user data for demonstration
  final Map<String, dynamic> userData = {
    'fullName': 'John Doe',
    'email': 'johndoe@example.com',
    'gender': 'Male',
    'idNumber': 'JD12345',
    'department': 'CS',
  };

  // Controller for editing fields
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController idNumberController = TextEditingController();

  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    // Initialize controllers with user data
    fullNameController.text = userData['fullName'];
    emailController.text = userData['email'];
    idNumberController.text = userData['idNumber'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(title: 'BiTech'),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Full Name:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            TextFormField(
              readOnly: !isEditing,
              controller: fullNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your full name',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Email:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            TextFormField(
              readOnly: !isEditing,
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email address',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'ID Number:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            TextFormField(
              readOnly: !isEditing,
              controller: idNumberController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your ID number',
              ),
            ),
            const SizedBox(height: 20),
            if (isEditing)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Save changes logic would go here
                      setState(() {
                        isEditing = false;
                      });
                    },
                    child: const Text('Save Changes'),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      // Cancel editing logic would go here
                      setState(() {
                        isEditing = false;
                        // Reset controllers to original values
                        fullNameController.text = userData['fullName'];
                        emailController.text = userData['email'];
                        idNumberController.text = userData['idNumber'];
                      });
                    },
                    child: const Text('Cancel'),
                  ),
                ],
              ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 4,
        onTap: (index) => navigateTo(context, index),
      ),
    );
  }
}

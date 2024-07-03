import 'package:flutter/material.dart';
import '../../Widgets/app_bar.dart';
import '../../Widgets/app_drawer.dart';
import '../../Widgets/bottom_navbar.dart';
import '../../utils/navigation_helper.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(
        title: 'BiTech', // Set the title of the app bar
        // You can handle search text changes if needed
      ),
      drawer: AppDrawer(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Analytics Screen',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            // Add your analytics widgets here (e.g., charts, graphs)
            Placeholder(
              fallbackHeight: 200.0,
              fallbackWidth: double.infinity,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 3, // Set current index for Analytics tab
        onTap: (index) => navigateTo(context, index),
      ),
    );
  }
}


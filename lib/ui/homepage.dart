// homePage.dart (corrected version)
import 'package:cyber_safe/ui/databreach.dart';
import 'package:cyber_safe/ui/privacyCheck.dart';
import 'package:cyber_safe/ui/settingPage.dart';
import 'package:cyber_safe/ui/trackerReportPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    PrivacyCheckPage(),
    TrackerReportScreen(), 
    CyberSafeHome(),
    SettingsPage(),
  ];

  final List<String> _titles = [
    "Home",
    "Tracker Report",
    "Data Checker", // Added missing comma
    "Settings",
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Add this for 4+ tabs
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        items: [
          _buildNavItem(Icons.home, "Home"),
          _buildNavItem(Icons.picture_as_pdf, "Report"),
          _buildNavItem(Icons.report, "Data Checker"),
          _buildNavItem(Icons.settings, "Settings"),
        ],
      ),
    );
  }
}
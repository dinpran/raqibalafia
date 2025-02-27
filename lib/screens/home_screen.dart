import 'package:flutter/material.dart';
import 'package:raqibalafia/screens/about_screen.dart';
import 'package:raqibalafia/screens/call_now.dart';
import 'package:raqibalafia/screens/contact_us.dart';
import 'package:raqibalafia/screens/home_page.dart';
import 'package:raqibalafia/screens/services.dart';
import 'package:raqibalafia/screens/why_us.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    AboutScreen(),
    WhyUs(),
    Services(),
    ContactUs(),
    CallNow(),
  ];

  void _navigateTo(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        titleSpacing: 20,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo at the top left
            Row(
              children: [
                Image.asset(
                  'assets/logo.jpeg', // Update this with your actual logo path
                  height: 40,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RAQIB ALAFIA",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      "Monitoring Wellness",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            // Buttons at the top right
            Row(
              children: [
                _buildNavButton("Home", 0),
                _buildNavButton("About Us", 1),
                _buildNavButton("Why Us", 2),
                _buildNavButton("Services", 3),
                _buildNavButton("Contact Us", 4),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _navigateTo(5), // Call Now Button
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Call Now"),
                ),
              ],
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex],
    );
  }

  Widget _buildNavButton(String title, int index) {
    return TextButton(
      onPressed: () => _navigateTo(index),
      child: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

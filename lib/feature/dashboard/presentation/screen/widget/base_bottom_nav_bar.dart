import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:foodapp/feature/routes/auto_route.dart';
// Ensure this is imported
@RoutePage()
class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigate using AutoRoute
    context.router.replace(_selectedIndex == 0
        ? DashboardRoute()
        : _selectedIndex == 1
        ? LoginRoute()
        : ResetPasswordRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation')),
      body: AutoRouter(), // Displays the current route based on navigation
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

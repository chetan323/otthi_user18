import 'package:flutter/material.dart';

import '../../../cart/presentation/screen/menu_screen.dart';
import '../screen/Customer_dashboard/dashboard.dart';
// import '../../../profile/presentation/screen/profile_screen.dart';

class ModernBottomNavBar extends StatefulWidget {
  @override
  _ModernBottomNavBarState createState() => _ModernBottomNavBarState();
}

class _ModernBottomNavBarState extends State<ModernBottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    //DashboardScreen(),
    //SearchScreen(),
    //CartScreen(),
   // ProfileScreen(),
    //SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // Extends the body behind the bottom nav bar
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 500),
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Background color for nav bar
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: false,
            elevation: 10,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_rounded),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}



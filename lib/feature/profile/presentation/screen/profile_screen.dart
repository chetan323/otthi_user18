import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

// Main function to run the app
// void main() {
//   runApp(MyApp());
// }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ModernBottomNavBar(), // Setting ModernBottomNavBar as the home
    );
  }
}

// Bottom Navigation Bar Class
class ModernBottomNavBar extends StatefulWidget {
  @override
  _ModernBottomNavBarState createState() => _ModernBottomNavBarState();
}

class _ModernBottomNavBarState extends State<ModernBottomNavBar> {
  // int _selectedIndex = 0;
  int _selectedIndex = 3;

  final List<Widget> _screens = [
    MenuScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
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
            label: 'Menu',
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
    );
  }
}

// Example Placeholder Screens
class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Menu Screen'));
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Search Screen'));
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Cart Screen'));
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController nameController = TextEditingController(text: 'Emilia Clarke');
  final TextEditingController emailController = TextEditingController(text: 'emiliaclarke@email.com');
  final TextEditingController mobileController = TextEditingController(text: '077-1234567');
  final TextEditingController addressController = TextEditingController(text: 'No 23, 6th Lane, Colombo 03');
  final TextEditingController passwordController = TextEditingController(text: '********');
  final TextEditingController confirmPasswordController = TextEditingController(text: '********');

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: screenWidth * 0.15,
                backgroundImage: AssetImage('assets/elephant.jpg'),
              ),
              SizedBox(height: 10),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.edit, color: Colors.orange),
                label: Text('Edit Profile', style: TextStyle(color: Colors.orange)),
              ),
              SizedBox(height: 10),
              Text(
                'Hi cs!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Sign Out', style: TextStyle(color: Colors.grey)),
              ),
              SizedBox(height: 20),

              _buildProfileTextBox('Name', nameController),
              _buildProfileTextBox('Email', emailController),
              _buildProfileTextBox('Mobile No', mobileController),
              _buildProfileTextBox('Address', addressController),
              _buildProfileTextBox('Password', passwordController, isPassword: true),
              _buildProfileTextBox('Confirm Password', confirmPasswordController, isPassword: true),

              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    print('Profile updated');
                  },
                  child: Text('Save', style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileTextBox(String label, TextEditingController controller, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Settings Screen'));
  }
}

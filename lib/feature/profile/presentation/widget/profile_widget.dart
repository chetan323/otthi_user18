import 'package:flutter/material.dart';
class ProfileWidget extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController mobileController;
  final TextEditingController passwordController;
  final VoidCallback onSave;

  const ProfileWidget({
    Key? key,
    required this.nameController,
    required this.emailController,
    required this.mobileController,
    required this.passwordController,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600; // Consider small screen if width < 600px

    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? 16 : 32, // More padding on larger screens
            vertical: isSmallScreen ? 16 : 32,
          ),
          child: Column(
            children: [
              // Responsive Profile Picture
              CircleAvatar(
                radius: isSmallScreen ? 50 : 75, // Larger size on bigger screens
                backgroundImage: AssetImage('assets/image1.png'),
              ),
              const SizedBox(height: 40),

              // Name Field
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0), // Rounded border
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0), // Rounded border when enabled
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0), // Border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0), // Rounded border when focused
                    borderSide: const BorderSide(color: Colors.blueAccent, width: 2.0), // Border color when focused
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Email Field
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(color: Colors.blueAccent, width: 2.0),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 40),

              // Mobile Number Field
              TextField(
                controller: mobileController,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(color: Colors.blueAccent, width: 2.0),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 40),

              // Password Field
              TextField(
                controller: passwordController,
                obscureText: true, // For password protection
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(color: Colors.blueAccent, width: 2.0),
                  ),
                ),
              ),
              const SizedBox(height: 140),

              // Responsive Save Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onSave,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: isSmallScreen ? 16 : 20, // More padding on larger screens
                    ),
                  ),
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

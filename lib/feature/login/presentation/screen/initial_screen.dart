import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/feature/login/presentation/screen/signup_screen.dart';

import 'login_screen.dart';

@RoutePage()
class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              // Orange background (top part)
              Container(
                height: screenHeight * 0.35,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(40)),
                ),
              ),
              // Remaining white space (bottom part)
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05), // Responsive padding
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.05), // Responsive space
                      // App Logo (below the orange section)
                      Image.asset(
                        'Assets/image/elephant.jpg', // Replace with actual logo image
                        height: screenHeight *
                            0.15, // Decreased height for the logo
                        fit: BoxFit.contain, // Adjust fit to prevent distortion
                      ),
                      SizedBox(height: screenHeight * 0.02), // Responsive space
                      // App Title
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                              fontSize: screenWidth * 0.08,
                              fontWeight:
                                  FontWeight.bold), // Responsive text size
                          children: const [
                            TextSpan(
                                text: 'Oothi',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: ' Meal',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      // App Description
                      Text(
                        'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize:
                                screenWidth * 0.045), // Responsive text size
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.05), // Responsive space
                      // Login Button
                      Container(
                        width: screenWidth * 0.8, // Responsive width
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle Login button press
                            // Uncomment to navigate to LoginScreen
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // Create Account Button
                      SizedBox(
                        width: screenWidth *
                            0.8, // Match width to the login button
                        child: OutlinedButton(
                          onPressed: () {
                            // Handle Create Account button press
                            // Uncomment to navigate to CreateAccountScreen
                             Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                          },
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15), // Responsive vertical padding
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            side: const BorderSide(
                                color: Colors.orange, width: 2),
                          ),
                          child: const Text(
                            'Create an Account',
                            style:
                                TextStyle(fontSize: 18, color: Colors.orange),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

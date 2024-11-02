import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../login/presentation/screen/initial_screen.dart';
import '../../../routes/auto_route.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay and navigate to the next screen
    Timer(const Duration(seconds: 5), () {
      context.pushRoute(UserRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background with light patterns (optional)
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'Assets/image/food.jpg'), // Assuming you have background patterns or a logo as background
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.3), BlendMode.lighten),
              ),
            ),
          ),
          // Center logo and text
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'Assets/image/elephant.jpg', // Your logo image path
                height: 120, // Adjust the height as needed
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: 'Oothi', style: TextStyle(color: Colors.orange)),
                    TextSpan(
                        text: ' Meal', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text(
                'FOOD DELIVERY',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

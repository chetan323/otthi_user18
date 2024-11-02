import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.15), // Adjust height for top spacing
            Text(
              'New Password',
              style: TextStyle(
                fontSize: size.width * 0.07, // Responsive font size
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.02), // Spacing between elements
            Text(
              'Please enter your email to receive a link to create a new password via email',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size.width * 0.04, // Responsive font size
                color: Colors.grey,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            // New Password TextField
            Container(
              width: size.width * 0.85, // Responsive width
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'New Password',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            // Confirm Password TextField
            Container(
              width: size.width * 0.85, // Responsive width
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            // Next Button
            Container(
              width: size.width * 0.85, // Responsive width
              height: size.height * 0.07, // Responsive height
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  // Handle button press logic here
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: size.width * 0.05, // Responsive font size
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
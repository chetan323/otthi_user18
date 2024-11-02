import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'new_password.dart';
@RoutePage()
class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Dismiss the keyboard on tap
        },
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.1),
                Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: width * 0.09,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  'Please enter your email to receive a link to create a new password via email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: width * 0.045,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: height * 0.08),

                // Email TextField
                TextFormField(
                  keyboardType: TextInputType.emailAddress, // Ensure correct input type
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                SizedBox(height: height * 0.02),

                // Send Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                    ),
                    onPressed: () {
                      // TODO: Add reset password logic here
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NewPasswordScreen()));
                      print("Send Button Clicked");
                    },
                    child: Text(
                      'Send',
                      style: TextStyle(fontSize: width * 0.045),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

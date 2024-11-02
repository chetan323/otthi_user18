import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/feature/dashboard/presentation/screen/Customer_dashboard/dashboard.dart';
import 'package:foodapp/feature/login/presentation/screen/reset_password_screen.dart';
import 'package:foodapp/feature/login/presentation/screen/signup_screen.dart';

import '../../../routes/auto_route.dart';
@RoutePage()
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Responsive size calculation
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.07), // Responsive padding
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.1),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: width * 0.09, // Responsive text size
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                'Add your details to login',
                style: TextStyle(
                  fontSize: width * 0.045, // Responsive text size
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: height * 0.03),

              // Email TextField
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: height * 0.02),

              // Password TextField
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                obscureText: true,
              ),
              SizedBox(height: height * 0.06),

              // Login Button
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
                    // TODO: Add your login logic here
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()));
                    context.router.push(DashboardRoute());
                    print("Login Button Clicked");
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: width * 0.045),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),

              // Forgot password (clickable)
              GestureDetector(
                onTap: () {
                  // TODO: Add forgot password logic here
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordScreen()));
                  print("Forgot password clicked");
                  // You can navigate to a reset password screen or trigger a dialog here
                  // showDialog(
                  //   context: context,
                  //   builder: (BuildContext context) {
                  //     return AlertDialog(
                  //       title: Text('Forgot Password'),
                  //       content: Text('Enter your email to reset password'),
                  //       actions: [
                  //         ElevatedButton(
                  //           onPressed: () {
                  //             //Navigator.of(context).pop();
                  //             //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));// Close dialog
                  //           },
                  //           child: Text('Close'),
                  //         ),
                  //       ],
                  //     );
                  //   },
                  // );
                },
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: width * 0.04,
                    decoration: TextDecoration
                        .underline, // Underline to show it's clickable
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),

              // Divider text
              Text(
                'or Login With',
                style: TextStyle(fontSize: width * 0.045, color: Colors.grey),
              ),
              SizedBox(height: height * 0.02),

              // Google Button (Centered)
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Add Google login logic
                    print("Login with Google clicked");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.02,
                      horizontal: width * 0.15, // Responsive width
                    ),
                  ),
                  icon: Icon(Icons.g_mobiledata, color: Colors.white),
                  label: Text(
                    'Login with Google',
                    style: TextStyle(
                      fontSize: width * 0.045,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(height: height * 0.04),
              // Signup option
              GestureDetector(
                onTap: () {
                  // TODO: Add sign-up logic here
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  print("Sign Up clicked");
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an Account? ",
                    style:
                        TextStyle(color: Colors.black, fontSize: width * 0.045),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}

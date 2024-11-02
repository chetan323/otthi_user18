import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.07),
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.1),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: width * 0.09,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                'Add your details to sign up',
                style: TextStyle(
                  fontSize: width * 0.045,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: height * 0.03),

              // Name TextField
              TextFormField(
                keyboardType: TextInputType.name,

                decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: height * 0.02),

              // Email TextField
              TextFormField(
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

              // Mobile No TextField
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Mobile No',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: height * 0.02),

              // Address TextField
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Address',
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
              SizedBox(height: height * 0.02),

              // Confirm Password TextField
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                obscureText: true,
              ),
              SizedBox(height: height * 0.04),

              // Sign Up Button
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
                    // TODO: Add your sign-up logic here
                    print("Sign Up Button Clicked");
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: width * 0.045),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),

              // Already have an Account? Login (clickable)
              GestureDetector(
                onTap: () {
                  // TODO: Navigate to the Login screen or add your logic
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  print("Login clicked");
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an Account? ',
                    style: TextStyle(color: Colors.black, fontSize: width * 0.045),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}

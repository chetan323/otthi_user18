import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'More Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MorePage(),
    );
  }
}

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          'More',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {
              // Cart action
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildMenuItem(
            context,
            Icons.account_balance_wallet,
            'Payment Details',
            onTap: () {
              // Handle tap action
              print("Payment Details tapped");
            },
          ),
          buildMenuItem(
            context,
            Icons.shopping_bag,
            'My Orders',
            onTap: () {
              // Handle tap action
              print("My Orders tapped");
            },
          ),
          buildMenuItem(
            context,
            Icons.notifications,
            'Notifications',
            onTap: () {
              // Handle tap action
              print("Notifications tapped");
            },
            // notificationCount: ,
          ),
          buildMenuItem(
            context,
            Icons.mail,
            'Inbox',
            onTap: () {
              // Handle tap action
              print("Inbox tapped");
            },
          ),
          buildMenuItem(
            context,
            Icons.info,
            'About Us',
            onTap: () {
              // Handle tap action
              print("About Us tapped");
            },
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(BuildContext context, IconData icon, String title,
      {Function()? onTap, int? notificationCount}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, color: Colors.black54, size: 28),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              if (notificationCount != null)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    notificationCount.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              Icon(Icons.chevron_right, color: Colors.black54),
            ],
          ),
        ),
      ),
    );
  }
}

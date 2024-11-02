import 'package:flutter/material.dart';
import 'package:foodapp/feature/dashboard/presentation/screen/Customer_dashboard/restro_model.dart';

import '../../../../cart/presentation/screen/menu_selection.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantDetailsScreen({Key? key, required this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name), // Display the restaurant name as the title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the restaurant image
            Image.asset(
              restaurant.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Menu category',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Wrap the MenuCard widgets inside Expanded + ListView to make them scrollable
            Expanded(
              child: ListView(
                children: [
                  MenuCard(
                    title: 'Dessert',
                    imageUrl: 'Assets/image/image4.png',
                    onTap: () {
                      // Define the action for Dessert card tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DessertPage(),
                        ),
                      );
                    },
                  ),
                  MenuCard(
                    title: 'Meal',
                    imageUrl: 'Assets/image/image4.png',
                    onTap: () {
                      // Define the action for Meal card tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuDetailScreen(menuTitle: 'Meal'),
                        ),
                      );
                    },
                  ),
                  MenuCard(
                    title: 'Snacks',
                    imageUrl: 'Assets/image/image4.png',
                    onTap: () {
                      // Define the action for Snacks card tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuDetailScreen(menuTitle: 'Snacks'),
                        ),
                      );
                    },
                  ),
                  MenuCard(
                    title: 'Drinks',
                    imageUrl: 'Assets/image/image4.png',
                    onTap: () {
                      // Define the action for Drinks card tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuDetailScreen(menuTitle: 'Drinks'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Clickable MenuCard Widget
class MenuCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onTap; // Function to call on tap

  const MenuCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.onTap, // Receive the onTap function as a parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Trigger the onTap action when the card is tapped
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            // Image Section
            ClipRRect(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
              child: Image.asset(
                imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            // Title Section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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

// Dummy MenuDetailScreen to Navigate to
class MenuDetailScreen extends StatelessWidget {
  final String menuTitle;

  const MenuDetailScreen({Key? key, required this.menuTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menuTitle),
      ),
      body: Center(
        child: Text(
          'Details for $menuTitle',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

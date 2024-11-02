import 'package:flutter/material.dart';

class PopularRestaurantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MediaQuery to get screen size for responsiveness
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Popular Restaurants',
          style: TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 0.05, // Responsive font size
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // View all action
              print('View all pressed');
            },
            child: Text(
              'View all',
              style: TextStyle(
                color: Colors.red,
                fontSize: screenWidth * 0.045, // Responsive font size
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.03), // Responsive padding
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  RestaurantItem(
                    title: 'Minute by tuk tuk',
                    rating: '4.9',
                    ratings: '124 ratings',
                    cuisineType: 'Café',
                    foodType: 'Western Food',
                    imagePath: 'assets/images/image1.png',
                    screenWidth: screenWidth,
                  ),
                  RestaurantItem(
                    title: 'Café de Noir',
                    rating: '4.9',
                    ratings: '124 ratings',
                    cuisineType: 'Café',
                    foodType: 'Western Food',
                    imagePath: 'assets/images/image2.png',
                    screenWidth: screenWidth,
                  ),
                  RestaurantItem(
                    title: 'Bakes by Tella',
                    rating: '4.9',
                    ratings: '124 ratings',
                    cuisineType: 'Café',
                    foodType: 'Western Food',
                    imagePath: 'assets/images/image3.png',
                    screenWidth: screenWidth,
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

class RestaurantItem extends StatelessWidget {
  final String title;
  final String rating;
  final String ratings;
  final String cuisineType;
  final String foodType;
  final String imagePath;
  final double screenWidth;

  const RestaurantItem({
    required this.title,
    required this.rating,
    required this.ratings,
    required this.cuisineType,
    required this.foodType,
    required this.imagePath,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(vertical: screenHeight * 0.02), // Responsive margin
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              imagePath,
              height: screenHeight * 0.25, // 25% of screen height for image
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.03), // Responsive padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: screenWidth * 0.045, // Responsive font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01), // Responsive spacing
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: screenWidth * 0.04), // Responsive icon size
                    SizedBox(width: screenWidth * 0.02), // Responsive spacing
                    Text(
                      '$rating ($ratings)',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: screenWidth * 0.04, // Responsive font size
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.01), // Responsive spacing
                Row(
                  children: [
                    Text(
                      cuisineType,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: screenWidth * 0.04, // Responsive font size
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.04), // Responsive spacing
                    Text(
                      foodType,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: screenWidth * 0.04, // Responsive font size
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

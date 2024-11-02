import 'package:flutter/material.dart';

import 'food_details_cart.dart';

class DessertPage extends StatelessWidget {
  const DessertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          'Desserts',
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
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Food',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          // List of Items
          Expanded(
            child: ListView(
              children: [
                buildFoodItem(screenHeight, screenWidth, 'French Apple Pie', '4.9', 'tuk tuk', 'Desserts', 'Assets/image/image1.png', context),
                buildFoodItem(screenHeight, screenWidth, 'Dark Chocolate Cake', '4.7', 'Cakes by Tella', 'Desserts', 'Assets/image/image2.jpg', context),
                buildFoodItem(screenHeight, screenWidth, 'Street Shake', '4.9', 'Café Racer', 'Desserts', 'Assets/image/image2.jpg', context),
                buildFoodItem(screenHeight, screenWidth, 'Fudgy Chewy Brownies', '4.9', 'tuk tuk', 'Desserts', 'Assets/image/image2.jpg', context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFoodItem(
      double screenHeight,
      double screenWidth,
      String title,
      String rating,
      String restaurant,
      String category,
      String imagePath,
      BuildContext context, // Add BuildContext here
      ) {
    final double price = 9.99; // Example price for each food item

    return GestureDetector(
      onTap: () {
        // Navigate to the food details page on tap
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodDetailScreen(
              title: title,
              imagePath: imagePath,
              price: price,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Container(
          height: screenHeight * 0.25,
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    SizedBox(width: 4),
                    Text(
                      rating,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '$restaurant · $category',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularRestaurantsSection extends StatelessWidget {
  final double screenWidth;

  PopularRestaurantsSection({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Popular Restaurants', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('View all', style: TextStyle(color: Colors.orange)),
          ],
        ),
        SizedBox(height: 10),
        RestaurantCard(
          image: 'Assets/image/image1.png',
          title: 'Minute by tuk tuk',
          rating: '4.9',
          description: 'Western Food',
          screenWidth: screenWidth,
        ),
        SizedBox(height: 10),
        RestaurantCard(
          image: 'Assets/image/image1.png',
          title: 'Café de Noir',
          rating: '4.7',
          description: 'Café',
          screenWidth: screenWidth,
        ),
      ],
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String image;
  final String title;
  final String rating;
  final String description;
  final double screenWidth;

  RestaurantCard({
    required this.image,
    required this.title,
    required this.rating,
    required this.description,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: Image.asset(
              image,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      SizedBox(width: 5),
                      Text(rating, style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(description, style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

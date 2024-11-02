import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentItemsSection extends StatelessWidget {
  final double screenWidth;

  RecentItemsSection({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Recent Items', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('View all', style: TextStyle(color: Colors.orange)),
          ],
        ),
        SizedBox(height: 10),
        Column(
          children: [
            RecentItemCard(
              image: 'Assets/image/image1.png',
              title: 'Mulberry Pizza by Josh',
              description: 'Café • Western Food',
              rating: '4.9',
              screenWidth: screenWidth,
            ),
            SizedBox(height: 10),
            RecentItemCard(
              image: 'Assets/image/image1.png',
              title: 'Barita',
              description: 'Café • Coffee',
              rating: '4.9',
              screenWidth: screenWidth,
            ),
            SizedBox(height: 10),
            RecentItemCard(
              image: 'Assets/image/image1.png',
              title: 'Pizza Rush Hour',
              description: 'Café • Italian Food',
              rating: '4.9',
              screenWidth: screenWidth,
            ),
          ],
        ),
      ],
    );
  }
}

class RecentItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String rating;
  final double screenWidth;

  RecentItemCard({
    required this.image,
    required this.title,
    required this.description,
    required this.rating,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              height: 80,
              width: 80,
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
                  Text(description, style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      SizedBox(width: 5),
                      Text(rating, style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MostPopularSection extends StatelessWidget {
  final double screenWidth;

  MostPopularSection({required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Most Popular', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('View all', style: TextStyle(color: Colors.orange)),
          ],
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularCard(
                image: 'Assets/image/image1.png',
                title: 'Café De Bambaa',
                description: 'Café • Western Food',
                rating: '4.9',
                screenWidth: screenWidth,
              ),
              PopularCard(
                image: 'Assets/image/image1.png',
                title: 'Burger by B',
                description: 'Café • Western Food',
                rating: '4.9',
                screenWidth: screenWidth,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PopularCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String rating;
  final double screenWidth;

  PopularCard({
    required this.image,
    required this.title,
    required this.description,
    required this.rating,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.6,
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryItem(image: 'Assets/image/image1.png', label: 'Offers'),
          CategoryItem(image: 'Assets/image/image1.png', label: 'Sri Lankan'),
          CategoryItem(image: 'Assets/image/image1.png', label: 'Italian'),
          CategoryItem(image: 'Assets/image/image1.png', label: 'Indian'),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String image;
  final String label;

  CategoryItem({required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          // Square avatar implementation
          Container(
            width: 60, // Set width for square
            height: 60, // Set height for square
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover, // Adjust the image to cover the container
              ),
              shape: BoxShape.rectangle, // Square shape
              borderRadius: BorderRadius.circular(8.0), // Optional: Rounded corners
            ),
          ),
          const SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliverySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Delivering to', style: TextStyle(color: Colors.grey)),
            Row(
              children: [
                Text(
                  'Current Location',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.keyboard_arrow_down, color: Colors.orange),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
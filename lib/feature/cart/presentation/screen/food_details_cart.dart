import 'package:flutter/material.dart';

class FoodDetailScreen extends StatefulWidget {
  final String title;
  final String imagePath;
  final double price;

  const FoodDetailScreen({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.price,
  }) : super(key: key);

  @override
  _FoodDetailScreenState createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.price * _quantity;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Food Image
            Image.asset(
              widget.imagePath,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            // Food Title
            Text(
              widget.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Price
            Text(
              'Price: \$${widget.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            SizedBox(height: 20),
            // Quantity selector
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Quantity', style: TextStyle(fontSize: 20)),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (_quantity > 1) _quantity--;
                        });
                      },
                      icon: Icon(Icons.remove),
                    ),
                    Text(_quantity.toString(), style: TextStyle(fontSize: 20)),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _quantity++;
                        });
                      },
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // Total Price
            Text(
              'Total: \$${totalPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 80),
            // Centered Add to Cart button with increased width
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50, // Set your desired width here
                child: ElevatedButton(

                  onPressed: () {
                    // Action to add to cart
                  },
                  child: Text('Add to Cart'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

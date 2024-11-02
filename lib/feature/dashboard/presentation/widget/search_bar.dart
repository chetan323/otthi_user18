import 'package:flutter/material.dart';
import '../screen/Customer_dashboard/restro_model.dart';
//import '../screen/Customer_dashboard/restaurant_details_screen.dart';
import '../screen/Customer_dashboard/restrorant_details.dart'; // Import the new screen

class ModernSearchBar extends StatefulWidget {
  final Function(Restaurant) onItemSelected; // Callback when an item is selected

  const ModernSearchBar({Key? key, required this.onItemSelected}) : super(key: key);

  @override
  _ModernSearchBarState createState() => _ModernSearchBarState();
}

class _ModernSearchBarState extends State<ModernSearchBar> {
  final TextEditingController _controller = TextEditingController();
  List<Restaurant> _suggestions = [];

  // Sample restaurant data with images
  List<Restaurant> _allItems = [
    Restaurant(name: 'hemanth bar and resturant', imageUrl: 'Assets/image/image1.png'),
    Restaurant(name: 'Burger House', imageUrl: 'Assets/image/image1.png'),
    Restaurant(name: 'Sushi World', imageUrl: 'Assets/image/image1.png'),
    Restaurant(name: 'Pasta Place', imageUrl: 'Assets/image/image1.png'),
    Restaurant(name: 'Taco Town', imageUrl: 'Assets/image/image1.png'),
    Restaurant(name: 'Dessert Delight', imageUrl: 'Assets/image/image1.png'),
    Restaurant(name: 'Healthy Greens', imageUrl: 'Assets/image/image1.png'),
    Restaurant(name: 'Sandwich Spot', imageUrl: 'Assets/image/image1.png'),
    Restaurant(name: 'Cafe Coffee Day', imageUrl: 'Assets/image/image1.png'),
    Restaurant(name: 'Food Fiesta', imageUrl: 'Assets/image/image1.png'),
  ];

  void _onTextChanged(String text) {
    setState(() {
      _suggestions = _allItems
          .where((item) => item.name.toLowerCase().contains(text.toLowerCase()))
          .toList();
    });
  }

  void _onSuggestionTap(Restaurant suggestion) {
    _controller.clear();
    widget.onItemSelected(suggestion); // Trigger the callback

    // Navigate to the RestaurantDetailsScreen when an item is tapped
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RestaurantDetailsScreen(restaurant: suggestion),
      ),
    );

    setState(() {
      _suggestions.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextField(
            controller: _controller,
            onChanged: _onTextChanged,
            decoration: InputDecoration(
              hintText: 'Search restaurants or food',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color: Colors.grey),
            ),
          ),
        ),
        if (_suggestions.isNotEmpty)
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _suggestions.length,
              itemBuilder: (context, index) {
                final suggestion = _suggestions[index];
                return ListTile(
                  leading: Image.asset(
                    suggestion.imageUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(suggestion.name),
                  onTap: () => _onSuggestionTap(suggestion),
                );
              },
            ),
          ),
      ],
    );
  }
}

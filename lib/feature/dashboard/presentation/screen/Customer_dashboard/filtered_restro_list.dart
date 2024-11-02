// filtered_restaurant_list.dart
import 'package:flutter/material.dart';
import 'package:foodapp/feature/dashboard/presentation/screen/Customer_dashboard/restro_model.dart'; // Restaurant Model

class FilteredRestaurantList extends StatelessWidget {
  final List<Restaurant> restaurants;
  final Function(String) onRestaurantTap;

  const FilteredRestaurantList({
    Key? key,
    required this.restaurants,
    required this.onRestaurantTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: restaurants.isEmpty
          ? const Center(child: Text("No restaurants found"))
          : ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return GestureDetector(
            onTap: () => onRestaurantTap(restaurant.name),
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                leading: Image.asset(
                  restaurant.imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(restaurant.name),
              ),
            ),
          );
        },
      ),
    );
  }
}

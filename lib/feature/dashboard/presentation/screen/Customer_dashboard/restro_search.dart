// // restro_search_screen.dart
// import 'package:flutter/material.dart';
// import 'package:foodapp/feature/dashboard/presentation/screen/Customer_dashboard/restro_model.dart';
// import 'package:foodapp/feature/dashboard/presentation/screen/Customer_dashboard/restrorant_details.dart';
//
//
// import '../../widget/search_bar.dart';
// import 'filtered_restro_list.dart';
//
// class RestroSearchScreen extends StatefulWidget {
//   @override
//   _RestroSearchScreenState createState() => _RestroSearchScreenState();
// }
//
// class _RestroSearchScreenState extends State<RestroSearchScreen> {
//   // Sample list of restaurants
//   List<Restaurant> restaurants = [
//     Restaurant(name: 'Pizza Palace', imageUrl: 'Assets/image/food.jpg'),
//     Restaurant(name: 'Burger House', imageUrl: 'Assets/image/food.jpg'),
//     Restaurant(name: 'Sushi World', imageUrl: 'Assets/image/food.jpg'),
//   ];
//
//   // Filtered list of restaurants
//   List<Restaurant> filteredRestaurants = [];
//
//   @override
//   void initState() {
//     super.initState();
//     // Initially, show all restaurants
//     filteredRestaurants = restaurants;
//   }
//
//   // Function to handle search/filtering logic
//   void _searchRestaurant(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         filteredRestaurants = restaurants;
//       } else {
//         filteredRestaurants = restaurants
//             .where((restaurant) =>
//             restaurant.name.toLowerCase().contains(query.toLowerCase()))
//             .toList();
//       }
//     });
//   }
//
//   // Function to navigate to restaurant details screen
//   void _navigateToRestaurantDetails(String restaurantName) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => RestaurantDetailsScreen(restaurantName: restaurantName),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Search Restaurants'),
//       ),
//       body: Column(
//         children: [
//           // Search widget
//           Search(
//             hintText: 'Search for restaurants...',
//             onTextChanged: _searchRestaurant, // Calls search logic
//           ),
//           const SizedBox(height: 10),
//
//           // Restaurant list with filtering
//           FilteredRestaurantList(
//             restaurants: filteredRestaurants,
//             onRestaurantTap: _navigateToRestaurantDetails, // Navigate on tap
//           ),
//         ],
//       ),
//     );
//   }
// }

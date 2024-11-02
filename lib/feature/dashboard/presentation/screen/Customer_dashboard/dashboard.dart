import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/feature/dashboard/presentation/screen/Customer_dashboard/filtered_restro_list.dart';
//import 'package:foodapp/feature/dashboard/presentation/widget/search_bar.dart';
import '../../../../cart/presentation/screen/food_details_cart.dart';
import '../../../../cart/presentation/screen/menu_screen.dart';
import '../../widget/category_row.dart';
import '../../widget/delivery.dart';
import '../../widget/most_popular.dart';
import '../../widget/recent_items.dart';

import '../../widget/search_bar.dart';
import '../widget/base_bottom_nav_bar.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Good morning Shetty'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              // Add cart action here
              Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetailScreen(title: '', imagePath: '', price: 10.0,)));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DeliverySection(),
            SizedBox(height: 10),
            ModernSearchBar(
              onItemSelected: (String ) {  },
            ),// This will include the search widget with filtering
            SizedBox(height: 15),
            CategoryRow(),
            SizedBox(height: 20),
            MostPopularSection(screenWidth: screenWidth),  // Most Popular Section
            SizedBox(height: 20),
            RecentItemsSection(screenWidth: screenWidth),  // Recent Items Section
          ],
        ),
      ),
     //bottomNavigationBar:   BottomNavScreen(),  // Uncomment to include the bottom nav bar
    );
  }
}
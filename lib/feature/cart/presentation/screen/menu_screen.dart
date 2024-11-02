import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../dashboard/presentation/widget/bottom_nav_bar.dart';

@RoutePage()
class MenuScreen extends StatefulWidget {
  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(Icons.shopping_cart, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Menu',
              style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            _buildSearchBar(),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildCategoryCard(
                    imageUrl: 'assets/images/image1.png',
                    title: 'Food',
                    itemCount: '120 Items',
                  ),
                  _buildCategoryCard(
                    imageUrl: 'assets/images/image1.png',
                    title: 'Beverages',
                    itemCount: '220 Items',
                  ),
                  _buildCategoryCard(
                    imageUrl: 'assets/images/image1.png',
                    title: 'Desserts',
                    itemCount: '155 Items',
                  ),
                  _buildCategoryCard(
                    imageUrl: 'assets/images/image1.png',
                    title: 'Promotions',
                    itemCount: '25 Items',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ModernBottomNavBar(),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search food',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard({
    required String imageUrl,
    required String title,
    required String itemCount,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.r,
            spreadRadius: 2.r,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.asset(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.error); // Fallback in case of missing image
              },
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                itemCount,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ],
      ),
    );
  }
}

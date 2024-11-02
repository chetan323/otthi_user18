// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
//
//
// class DessertApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(375, 812),
//       minTextAdapt: true,
//       builder: (context, child) {
//         return MaterialApp(
//           home: DessertScreen(),
//         );
//       },
//     );
//   }
// }
//
// class DessertScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: Icon(Icons.arrow_back, color: Colors.black),
//         actions: [
//           Icon(Icons.shopping_cart, color: Colors.black),
//           SizedBox(width: 16.w),
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Desserts',
//               style: TextStyle(
//                 fontSize: 28.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 16.h),
//             _buildSearchBar(),
//             SizedBox(height: 16.h),
//             Expanded(
//               child: ListView(
//                 children: [
//                   _buildDessertCard(
//                     imageUrl: 'assets/image1.png',
//                     title: 'French Apple Pie',
//                     description: '9 Minute by tuk tuk - Desserts',
//                     rating: 4.9,
//                     onTap: () {
//                       // Navigate to detailed view or any action
//                       print('Tapped on French Apple Pie');
//                     },
//                   ),
//                   _buildDessertCard(
//                     imageUrl: 'assets/image1.png',
//                     title: 'Dark Chocolate Cake',
//                     description: 'Cakes by Tella - Desserts',
//                     rating: 4.7,
//                     onTap: () {
//                       print('Tapped on Dark Chocolate Cake');
//                     },
//                   ),
//                   _buildDessertCard(
//                     imageUrl: 'assets/image1.png',
//                     title: 'Street Shake',
//                     description: 'Café Racer - Desserts',
//                     rating: 4.9,
//                     onTap: () {
//                       print('Tapped on Street Shake');
//                     },
//                   ),
//                   _buildDessertCard(
//                     imageUrl: 'assets/image1.png',
//                     title: 'Fudgy Chewy Brownies',
//                     description: '4.9 Minute by tuk tuk - Desserts',
//                     rating: 4.9,
//                     onTap: () {
//                       print('Tapped on Fudgy Chewy Brownies');
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSearchBar() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 16.w),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(30.r),
//       ),
//       child: Row(
//         children: [
//           Icon(Icons.search, color: Colors.grey),
//           SizedBox(width: 8.w),
//           Expanded(
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: 'Search Food',
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDessertCard({
//     required String imageUrl,
//     required String title,
//     required String description,
//     required double rating,
//     required Function onTap,
//   }) {
//     return GestureDetector(
//       onTap: () => onTap(),
//       child: Container(
//         margin: EdgeInsets.only(bottom: 16.h),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15.r),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 10.r,
//               spreadRadius: 2.r,
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(15.r),
//                 topRight: Radius.circular(15.r),
//               ),
//               child: Image.asset(
//                 imageUrl,
//                 height: 200.h,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(16.w),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 4.h),
//                   Text(
//                     description,
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   SizedBox(height: 8.h),
//                   Row(
//                     children: [
//                       Icon(Icons.star, color: Colors.orange, size: 16.sp),
//                       SizedBox(width: 4.w),
//                       Text(
//                         rating.toString(),
//                         style: TextStyle(
//                           fontSize: 14.sp,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//

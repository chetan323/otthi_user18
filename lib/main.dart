import 'package:flutter/material.dart';
import 'feature/routes/auto_route.dart'; // Import the generated router

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter(); // Initialize the generated AppRouter

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(), // Configure routing with AutoRouter
    );
  }
}

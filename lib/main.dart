import 'package:flutter/material.dart';
import 'pages/home_page.dart';

// This is where our app starts
// The main function is the first thing that runs

void main() {
  // Start the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Name of our app
      title: 'News App',
      
      // Set our app colors
      theme: ThemeData(
        primarySwatch: Colors.blue, // Main color is blue
        
        // Style for the top bar
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      
      // Show the home page first
      home: const HomePage(),
      
      // Hide the debug banner in corner
      debugShowCheckedModeBanner: false,
    );
  }
}
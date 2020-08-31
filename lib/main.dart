import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF3C3F41),
        scaffoldBackgroundColor: Color(0xFF2A2A2A),
      ),
      home: HomeScreen(),
    );
  }
}

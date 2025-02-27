import 'package:flutter/material.dart';
import 'package:testing/home.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Menu',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

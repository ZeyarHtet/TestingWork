import 'package:flutter/material.dart';
import 'package:testing/home.dart';
import 'package:testing/testing.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Testing',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

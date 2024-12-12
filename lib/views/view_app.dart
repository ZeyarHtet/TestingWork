import 'package:flutter/material.dart';

class ViewApp extends StatefulWidget {
  const ViewApp({super.key});

  @override
  State<ViewApp> createState() => _ViewAppState();
}

class _ViewAppState extends State<ViewApp> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Apps Screen"),);
  }
}
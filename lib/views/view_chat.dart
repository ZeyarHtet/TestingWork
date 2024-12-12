import 'package:flutter/material.dart';

class ViewChat extends StatefulWidget {
  const ViewChat({super.key});

  @override
  State<ViewChat> createState() => _ViewChatState();
}

class _ViewChatState extends State<ViewChat> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Chat Screen"),);
  }
}
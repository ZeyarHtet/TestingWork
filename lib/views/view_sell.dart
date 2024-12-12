import 'package:flutter/material.dart';

class ViewSell extends StatefulWidget {
  const ViewSell({super.key});

  @override
  State<ViewSell> createState() => _ViewSellState();
}

class _ViewSellState extends State<ViewSell> {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: Text("Sell Screen"),
    );
  }
}
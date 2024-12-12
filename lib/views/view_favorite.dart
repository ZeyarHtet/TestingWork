import 'package:flutter/material.dart';

class ViewFavorite extends StatefulWidget {
  const ViewFavorite({super.key});

  @override
  State<ViewFavorite> createState() => _ViewFavoriteState();
}

class _ViewFavoriteState extends State<ViewFavorite> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Favorite Screen"),);
  }
}
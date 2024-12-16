import 'package:flutter/material.dart';

class ViewFavorite extends StatelessWidget {
   final List<Map<String, dynamic>> favoriteList;

  const ViewFavorite({required this.favoriteList, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Products'),
      ),
      body: favoriteList.isEmpty
          ? const Center(
              child: Text('No favorites added yet!'),
            )
          : ListView.builder(
              itemCount: favoriteList.length,
              itemBuilder: (context, index) {
                final product = favoriteList[index];
                return ListTile(
                  onTap: () {
                    
                  },
                  leading: Image.asset(product['image']),
                  title: Text(product['name']),
                  subtitle: Text(product['price']),
                );
              },
            ),
    );
  }
}
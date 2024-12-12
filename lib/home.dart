import 'package:flutter/material.dart';
import 'package:testing/common.dart';
import 'package:testing/details_screen.dart';
import 'package:testing/drawer.dart';
import 'package:testing/views/view_app.dart';
import 'package:testing/views/view_favorite.dart';
import 'package:testing/views/view_home.dart';
import 'package:testing/views/view_sell.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> pages = [
    const ViewHome(),
    const ViewSell(),
    const ViewFavorite(),
    const ViewApp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
        iconTheme: const IconThemeData(color: maincolor),
        elevation: 0,
      ),
      drawer: const MainDrawer(),
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(color: Color.fromARGB(161, 55, 54, 54), blurRadius: 25),
        ]),
        child: ClipRRect(
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: const Color.fromARGB(255, 136, 219, 203),
            unselectedItemColor: Colors.black,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index; // Update _currentIndex on tap.
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.sell), label: "Sell"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
              BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
            ],
          ),
        ),
      ),
    );
  }
}

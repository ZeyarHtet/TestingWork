import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(
            width: 300, // Set the desired width
            height: 100, // Set the desired height
            child: DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 154, 228, 231),
                  Color.fromARGB(255, 136, 219, 203),
                ]),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 10, right: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: Color.fromARGB(255, 35, 34, 34),
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.home_repair_service),
            title: const Text('Home Renovation'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.cleaning_services),
            title: const Text('Aircon Service'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.plumbing),
            title: const Text('Plumber'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.electrical_services),
            title: const Text('Electrical'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.car_repair),
            title: const Text('Car Workshops'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
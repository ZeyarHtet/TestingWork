import 'package:flutter/material.dart';

class SupplierSignup extends StatefulWidget {
  const SupplierSignup({super.key});

  @override
  State<SupplierSignup> createState() => _SupplierSignupState();
}

class _SupplierSignupState extends State<SupplierSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: const Text('Supplier'),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.account_circle),
        //     tooltip: 'Profile',
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            //Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ToggleButtons(
            //       isSelected: [true, false],
            //       onPressed: (int index) {

            //       },
            //       borderRadius: BorderRadius.circular(8),
            //       children: const [
            //         Padding(
            //           padding: EdgeInsets.symmetric(horizontal: 16.0),
            //           child: Text('Customer'),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.symmetric(horizontal: 16.0),
            //           child: Text('Supplier'),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Company Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'State',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Township',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Add Address',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 136, 219, 203),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:testing/common.dart';

class CustomerSignIn extends StatefulWidget {
  const CustomerSignIn({super.key});

  @override
  State<CustomerSignIn> createState() => _CustomerSignInState();
}

class _CustomerSignInState extends State<CustomerSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Address'),
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
                labelText: 'Country',
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
              style: ElevatedButton.styleFrom(
                backgroundColor: maincolor,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Add Address',
                style: TextStyle(color: seccolor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

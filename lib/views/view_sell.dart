import 'package:flutter/material.dart';
import 'package:testing/common.dart';

class ViewSell extends StatefulWidget {
  const ViewSell({super.key});

  @override
  State<ViewSell> createState() => _ViewSellState();
}

class _ViewSellState extends State<ViewSell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
                labelText: 'Country',
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
                labelText: 'state ',
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
                labelText: ' township_name',
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
                labelText: ' house_number ',
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
                labelText: 'street_name',
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
                'Add ',
                style: TextStyle(color: seccolor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class SellScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
// return Scaffold(
//   backgroundColor: Colors.white,
//   appBar: AppBar(
//     backgroundColor: Colors.white,
//     elevation: 0,
//     leading: IconButton(
//       icon: Icon(Icons.close, color: Colors.black),
//       onPressed: () {},
//     ),
//   ),
//   body: Padding(
//     padding: const EdgeInsets.all(16.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'List anything yourself',
//           style: TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 16),
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   Icon(Icons.camera_alt, size: 40, color: Colors.grey),
//                   SizedBox(height: 8),
//                   Text('Add a photo to start a listing'),
//                 ],
//               ),
//             ),
//           ),
//         ),
//        const SizedBox(height: 24),
//         Row(
//           children: [
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade300,
//                 borderRadius: BorderRadius.circular(4),
//               ),
//               child:const Text('Beta', style: TextStyle(fontSize: 12)),
//             ),
//             SizedBox(width: 8),
//             Text(
//               'Or sell to Carousell',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 8),
//         Text(
//           'No listing needed, sell directly to us',
//           style: TextStyle(color: Colors.grey),
//         ),
//         SizedBox(height: 16),
//         Expanded(
//           child: ListView(
//             children: [
//               buildSellOption('Mobile', 'Doorstep pickup, instant cash out', Icons.phone_android),
//               buildSellOption('Luxury handbags', 'Highest offer in the market', Icons.shopping_bag),
//               buildSellOption('Men\'s & women\'s fashion', 'Clean out your closet', Icons.checkroom),
//               buildSellOption('Cars', 'Get the best quote in 24h', Icons.directions_car),
//               buildSellOption('Decathlon bicycles', ' ', Icons.pedal_bike),
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// );

//   return Scaffold(
//     appBar: AppBar(
//       title: const Text('Address'),
//       // actions: [
//       //   IconButton(
//       //     onPressed: () {},
//       //     icon: const Icon(Icons.account_circle),
//       //     tooltip: 'Profile',
//       //   ),
//       // ],
//     ),
//     body: Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           const SizedBox(height: 20),
//           //Row(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   children: [
//           //     ToggleButtons(
//           //       isSelected: [true, false],
//           //       onPressed: (int index) {

//           //       },
//           //       borderRadius: BorderRadius.circular(8),
//           //       children: const [
//           //         Padding(
//           //           padding: EdgeInsets.symmetric(horizontal: 16.0),
//           //           child: Text('Customer'),
//           //         ),
//           //         Padding(
//           //           padding: EdgeInsets.symmetric(horizontal: 16.0),
//           //           child: Text('Supplier'),
//           //         ),
//           //       ],
//           //     ),
//           //   ],
//           // ),
//           const SizedBox(height: 20),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Country',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//           ),
//           const SizedBox(height: 16),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Address',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//           ),
//           const SizedBox(height: 16),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'State',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//           ),
//           const SizedBox(height: 16),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Township',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Phone',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {},
//             style: ElevatedButton.styleFrom(
//               backgroundColor: maincolor,
//               padding: const EdgeInsets.symmetric(vertical: 16.0),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//             child: const Text(
//               'Add Address',
//               style: TextStyle(color: seccolor),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

Widget buildSellOption(String title, String subtitle, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 40, color: Colors.black),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    ),
  );
}

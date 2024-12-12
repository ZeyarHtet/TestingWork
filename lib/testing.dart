// import 'package:flutter/material.dart';

// class ProductDetailsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.favorite_border, color: Colors.black),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.share, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Product Image
//             Center(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: Image.asset(
//                   widget.img,
//                   width: MediaQuery.of(context).size.width / 1.2,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Product Name and Price
//             Text(
//               widget.name,
//               style: GoogleFonts.poppins(
//                 fontSize: 30,
//                 letterSpacing: 1,
//                 color: maincolor,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               widget.price,
//               style: GoogleFonts.poppins(
//                 fontSize: 16,
//                 letterSpacing: 1,
//                 color: maincolor,
//               ),
//             ),
//             const SizedBox(height: 8),
//             // Text(
//             //   "Seller: Syed Noman",
//             //   style: TextStyle(fontSize: 16, color: Colors.grey),
//             // ),
//             const SizedBox(height: 16),

//             // Rating Row
//             Row(
//               children: [
//                 Container(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                   decoration: BoxDecoration(
//                     color: Colors.orange,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Row(
//                     children: [
//                       Icon(Icons.star, color: Colors.white, size: 16),
//                       const SizedBox(width: 4),
//                       Text(
//                         "4.8",
//                         style: TextStyle(
//                             color: Colors.white, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(width: 8),
//                 Text("(320 Reviews)", style: TextStyle(color: Colors.grey)),
//               ],
//             ),
//             const SizedBox(height: 16),

//             // Color Options
//             // Text(
//             //   "Color",
//             //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             // ),
//             // const SizedBox(height: 8),
//             // Row(
//             //   children: [
//             //     _buildColorOption(Colors.black),
//             //     _buildColorOption(Colors.red),
//             //     _buildColorOption(Colors.blue),
//             //     _buildColorOption(Colors.orange),
//             //   ],
//             // ),
//             const SizedBox(height: 16),

//             // Tabs Section
//             DefaultTabController(
//               length: 3,
//               child: Column(
//                 children: [
//                   const TabBar(
//                     labelColor: Colors.orange,
//                     unselectedLabelColor: Colors.grey,
//                     indicatorColor: Colors.orange,
//                     tabs: [
//                       Tab(text: "Description"),
//                       Tab(text: "Specifications"),
//                       Tab(text: "Reviews"),
//                     ],
//                   ),
//                   Container(
//                     height: 100, // Tab content height
//                     child: const TabBarView(
//                       children: [
//                         Text(
//                           "The art of communication has evolved over centuries...",
//                           style: TextStyle(fontSize: 14, color: Colors.grey),
//                         ),
//                         Text(
//                           "Specifications here.",
//                           style: TextStyle(fontSize: 14, color: Colors.grey),
//                         ),
//                         Text(
//                           "Customer reviews here.",
//                           style: TextStyle(fontSize: 14, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Quantity and Add to Cart Button
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     _buildQuantityButton(Icons.remove, () {}),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 8.0),
//                       child: Text(
//                         "1",
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     _buildQuantityButton(Icons.add, () {}),
//                   ],
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     // primary: Colors.orange,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 32, vertical: 12),
//                   ),
//                   child: const Text("Add to Cart"),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }


//   Widget _buildQuantityButton(IconData icon, VoidCallback onPressed) {
//     return InkWell(
//       onTap: onPressed,
//       child: Container(
//         padding: const EdgeInsets.all(8),
//         decoration: BoxDecoration(
//           color: Colors.grey[200],
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Icon(icon, size: 16),
//       ),
//     );
//   }
// }

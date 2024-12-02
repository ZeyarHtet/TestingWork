import 'package:flutter/material.dart';
import 'package:testing/common.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCategory = "";

  List categories = [
    {"name": "All", "type": ""},
    {"name": "Red Car", "type": "001"},
    {"name": "White Car", "type": "002"},
    {"name": "Blue Car", "type": "003"},
    {"name": "Dark Blue Car", "type": "004"},
  ];

  List mainFoodList = [
    {
      "name": "Red Car",
      "image": "assets/images/redcar.png",
      "price": "\$20.00",
      "rate": "5",
      "type": "001",
      "about":
          "Strawberries (Fragaria x ananassa) are vibrant, heart-shaped fruits known for their sweet taste and rich nutrient content, thriving in well-drained soil and mild climates.",
    },
    {
      "name": "White Car",
      "image": "assets/images/whitecar.png",
      "price": "\$20.00",
      "rate": "5",
      "type": "002",
      "about":
          "Cauliflower (Brassica oleracea var. botrytis) is a versatile cruciferous vegetable prized for its edible white curd, nutritious value, and adaptability in diverse culinary applications.",
    },
    {
      "name": "Blue Car",
      "image": "assets/images/bluecar.png",
      "price": "\$15.00",
      "rate": "5",
      "type": "003",
      "about":
          "Oranges (Citrus x sinensis) are juicy, sweet citrus fruits known for their high vitamin C content and diverse uses in fresh consumption, juices, and culinary dishes worldwide.",
    },
    {
      "name": "Dark Blue Car",
      "image": "assets/images/darkbluecar.png",
      "price": "\$20.00",
      "rate": "5",
      "type": "004",
      "about":
          "Watermelons (Citrullus lanatus) are large, refreshing fruits with a sweet, watery flesh and a thick rind, widely enjoyed for hydration and nutritional benefits during warm seasons.",
    }
  ];

  List foodList = [];

  @override
  void initState() {
    setState(() {
      foodList = List.from(mainFoodList);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: backgroundcolor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello,Kyaw',
              style: TextStyle(
                  color: maincolor, fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              'Your Private Store',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: maincolor),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: maincolor),
                boxShadow: const [
                  BoxShadow(
                    // spreadRadius: 2,
                    blurRadius: 10,
                    color: Color.fromARGB(255, 215, 208, 208),
                  ),
                ],
                borderRadius: BorderRadius.circular(80),
              ),
              child: const Icon(
                Icons.search,
                color: maincolor,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: maincolor),
                boxShadow: const [
                  BoxShadow(
                    // spreadRadius: 2,
                    // blurRadius: 10,
                    color: Color.fromARGB(255, 215, 208, 208),
                  ),
                ],
                borderRadius: BorderRadius.circular(80),
              ),
              child: const Icon(
                Icons.notifications,
                color: maincolor,
              ),
            ),
          )
        ],
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 15),
        //   child: IconButton(
        //     icon: const Icon(
        //       Icons.menu,
        //       color: maincolor,
        //     ),
        //     onPressed: () {},
        //   ),
        // ),
        elevation: 0,
      ),
      // drawer: const DrawerPage(
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Text(
                        'Category',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: List.generate(
                        categories.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                foodList = [];
                                currentCategory = categories[index]["type"];
                                for (int i = 0; i < mainFoodList.length; i++) {
                                  if (currentCategory ==
                                      mainFoodList[i]["type"]) {
                                    foodList.add(mainFoodList[i]);
                                  }
                                }
                                if (currentCategory == "") {
                                  foodList = List.from(mainFoodList);
                                }
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  currentCategory == categories[index]['type']
                                      ? listcolor
                                      : seccolor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            margin: const EdgeInsets.only(right: 20),
                            child: Text(
                              categories[index]['name'],
                              style: TextStyle(
                                color:
                                    currentCategory == categories[index]['type']
                                        ? seccolor
                                        : Colors.grey.shade600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Text(
                        'Items',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  childAspectRatio: 0.95,
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(
                    foodList.length,
                    (index) => GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 20,
                        ),
                        margin: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: seccolor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              child: Image.asset(
                                "${foodList[index]["image"]}",
                                width: 80,
                                height: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  foodList[index]["name"],
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: maincolor,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    foodList[index]["price"],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: maincolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Image.asset(
                                          "assets/images/star.png",
                                          width: 17,
                                          height: 17,
                                        ),
                                      ),
                                      Text(
                                        foodList[index]["rate"],
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: maincolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


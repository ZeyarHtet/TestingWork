import 'package:flutter/material.dart';
import 'package:testing/common.dart';
import 'package:testing/details_screen.dart';
import 'package:testing/drawer.dart';
import 'package:testing/views/view_app.dart';
import 'package:testing/views/view_favorite.dart';
import 'package:testing/views/view_sell.dart';
import 'package:testing/widgets/model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCategory = "";
  List productList = [];
  TextEditingController searchController = TextEditingController();

  List categories = [
    {"name": "All", "type": ""},
    {"name": "Fruits ", "type": "001"},
    {"name": "Clothes", "type": "002"},
    {"name": "Mobile Phone", "type": "003"},
    {"name": "Cosmetic", "type": "004"},
    {"name": "Electrical", "type": "005"},
  ];

  List<Map<String, dynamic>> mainProductList = [
    {
      "name": "Strawberry",
      "image": "assets/images/strawberry.jpg",
      "price": "\$1500.00",
      "rate": "5",
      "type": "001",
      "favorite": false,
      "category": "product",
      "about":
          "Indulge in the irresistible sweetness of fresh, handpicked strawberries, bursting with flavor in every bite. Packed with Vitamin C and antioxidants, they’re the perfect healthy treat for any occasion.",
    },
    {
      "name": "Orange",
      "image": "assets/images/orange.jpg",
      "price": "\$1500.00",
      "rate": "5",
      "type": "001",
      "favorite": false,
      "category": "product",
      "about":
          "Refresh yourself with the natural sweetness of juicy, sun-ripened oranges, packed with Vitamin C to boost your health. Perfect for snacking, juicing, or adding a zesty twist to your favorite recipes.",
    },
    {
      "name": "Grapes",
      "image": "assets/images/grapes.jpg",
      "price": "\$1500.00",
      "rate": "5",
      "type": "001",
      "favorite": false,
      "category": "product",
      "about":
          "Enjoy the burst of sweetness in every bite of our fresh, plump grapes, perfect for snacking or adding to your favorite dishes. Packed with antioxidants and natural flavor, they’re a healthy treat for any time of day.",
    },
    {
      "name": "Watermelon",
      "image": "assets/images/watermelon.jpg",
      "price": "\$1500.00",
      "rate": "5",
      "type": "001",
      "favorite": false,
      "category": "product",
      "about":
          "Cool down with the refreshing taste of juicy, sweet watermelon, packed with hydration and natural goodness. The perfect summer snack, it’s a delicious way to stay refreshed and nourished all day long.",
    },
    {
      "name": "Sweater",
      "image": "assets/images/sweater.jpg",
      "price": "\$2000.00",
      "rate": "5",
      "type": "002",
      "favorite": false,
      "category": "product",
      "about":
          "Stay cozy and stylish this season with our soft, warm sweaters, designed for ultimate comfort and a perfect fit. Available in a variety of colors and styles, they’re the perfect addition to your winter wardrobe."
    },
    {
      "name": "Tshirt",
      "image": "assets/images/Tshirt.webp",
      "price": "\$2000.00",
      "rate": "5",
      "type": "002",
      "favorite": false,
      "category": "product",
      "about":
          "Elevate your everyday style with our comfortable, high-quality T-shirts, designed for a perfect fit and lasting durability. Available in a range of colors and designs, they’re the ultimate choice for casual comfort and effortless fashion."
    },
    {
      "name": "Hoodie",
      "image": "assets/images/hoodie.webp",
      "price": "\$2000.00",
      "rate": "5",
      "type": "002",
      "favorite": false,
      "category": "product",
      "about":
          "Stay warm and stylish with our cozy hoodies, designed for comfort and a perfect fit. Whether for lounging or layering, they’re the ideal addition to your casual wardrobe this season."
    },
    {
      "name": "Half Zipper",
      "image": "assets/images/halfzipper.jpg",
      "price": "\$2000.00",
      "rate": "5",
      "type": "002",
      "favorite": false,
      "category": "product",
      "about":
          "Experience the perfect blend of comfort and style with our Half Zipper, designed for a sleek look and ultimate flexibility. Ideal for layering or wearing on its own, it’s the versatile piece your wardrobe needs."
    },
    {
      "name": "iPhone 11",
      "image": "assets/images/iphone11.webp",
      "price": "\$1000.00",
      "rate": "5",
      "type": "003",
      "favorite": false,
      "category": "product",
      "about":
          "Experience the power and performance of the iPhone 11, featuring a stunning display and advanced camera capabilities for incredible photos and videos. With its sleek design and cutting-edge technology, it's the perfect companion for your everyday needs."
    },
    {
      "name": "Samsung s23 Ultra",
      "image": "assets/images/samsung.webp",
      "price": "\$1000.00",
      "rate": "5",
      "type": "003",
      "favorite": false,
      "category": "product",
      "about":
          "Unleash the power of the Samsung Galaxy S23 Ultra, with its stunning 200MP camera and lightning-fast performance. Perfectly crafted for those who demand innovation, style, and cutting-edge technology in one sleek device."
    },
    {
      "name": "vivo v27",
      "image": "assets/images/vivo.jpeg",
      "price": "\$1000.00",
      "rate": "5",
      "type": "003",
      "favorite": false,
      "category": "product",
      "about":
          "Experience the sleek design and powerful performance of the Vivo V27, featuring a stunning display and advanced camera for exceptional photos. With its long-lasting battery and smooth user experience, the Vivo V27 is built to keep up with your busy lifestyle."
    },
    {
      "name": "Red Magic 7",
      "image": "assets/images/redmagic.jpg",
      "price": "\$1000.00",
      "rate": "5",
      "type": "003",
      "favorite": false,
      "category": "product",
      "about":
          "Level up your gaming experience with the Red Magic 7, featuring a blazing-fast processor and an ultra-smooth display for uninterrupted gameplay. With its advanced cooling system and long-lasting battery, it’s the ultimate phone for gamers who demand performance and power."
    },
    {
      "name": "Dove Shampoo",
      "image": "assets/images/dove.png",
      "price": "\$2000.00",
      "rate": "5",
      "type": "004",
      "favorite": false,
      "category": "product",
      "about":
          "Transform your hair with Dove Shampoo, providing deep nourishment and leaving your hair feeling soft, smooth, and healthy. With its gentle formula, Dove Shampoo is perfect for all hair types, giving you the confidence of beautifully refreshed hair every day."
    },
    {
      "name": "Nivea Lotion",
      "image": "assets/images/nivea.webp",
      "price": "\$2000.00",
      "rate": "5",
      "type": "004",
      "favorite": false,
      "category": "product",
      "about":
          "Pamper your skin with Nivea Lotion, delivering long-lasting moisture and leaving your skin soft, smooth, and nourished. Its gentle, non-greasy formula is perfect for daily use, providing all-day hydration and care for your skin."
    },
    {
      "name": "Nivea Men",
      "image": "assets/images/niveamen.webp",
      "price": "\$2000.00",
      "rate": "5",
      "type": "004",
      "favorite": false,
      "category": "product",
      "about":
          "Nivea Men is the ultimate skincare solution for men, offering deep hydration and protection for your skin every day. With its powerful yet gentle formula, Nivea Men keeps your skin feeling fresh, smooth, and revitalized, no matter the challenge."
    },
    {
      "name": "Lifebuoy",
      "image": "assets/images/lifebuoy.jpeg",
      "price": "\$2000.00",
      "rate": "5",
      "type": "004",
      "favorite": false,
      "category": "product",
      "about":
          "Revitalize your skin with Lifebuoy Body Wash, providing a refreshing clean while protecting against germs and bacteria. Its rich lather and refreshing scent leave your skin feeling smooth, healthy, and deeply nourished."
    },
    {
      "name": "Electrical",
      "image": "assets/images/electrical.jpeg",
      "price": "\$2000.00",
      "rate": "5",
      "type": "005",
      "favorite": false,
      "category": "service",
      "about":
          "The term electrical work is often described in the context of understanding electricity. It fundamentally refers to energy alteration from electrical energy to another form or vice versa.",
    },
    {
      "name": "Electrical",
      "image": "assets/images/electrical2.jpg",
      "price": "\$2000.00",
      "rate": "5",
      "type": "005",
      "category": "service",
      "about":
          "The term electrical work is often described in the context of understanding electricity. It fundamentally refers to energy alteration from electrical energy to another form or vice versa.",
    },
    {
      "name": "Electrical",
      "image": "assets/images/electrical3.jpg",
      "price": "\$2000.00",
      "rate": "5",
      "type": "005",
      "favorite": false,
      "category": "service",
      "about":
          "The term electrical work is often described in the context of understanding electricity. It fundamentally refers to energy alteration from electrical energy to another form or vice versa.",
    },
    {
      "name": "Electrical",
      "image": "assets/images/electrical4.jpg",
      "price": "\$2000.00",
      "rate": "5",
      "type": "005",
      "favorite": false,
      "category": "service",
      "about":
          "The term electrical work is often described in the context of understanding electricity. It fundamentally refers to energy alteration from electrical energy to another form or vice versa.",
    },
  ];

  @override
  void initState() {
    setState(() {
      productList = List.from(mainProductList);
    });
    super.initState();
  }

  void searchProducts(String query) {
    setState(() {
      productList = mainProductList
          .where((product) =>
              product["name"].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  final List<Map<String, dynamic>> favoriteList = [];

  void toggleFavorite(int index) {
    setState(() {
      // Toggle the favorite status of the selected product
      mainProductList[index]['favorite'] = !mainProductList[index]['favorite'];

      if (mainProductList[index]['favorite']) {
        // Add to favoriteList if marked as favorite
        favoriteList.add(mainProductList[index]);
        print(favoriteList);
      } else {
        // Remove from favoriteList if unmarked as favorite
        favoriteList.removeWhere(
            (item) => item['name'] == mainProductList[index]['name']);
      }

      // Print to check the current state of the favorite list
      print(favoriteList);
    });
  }

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
        drawer: MainDrawer(
          favoriteList: favoriteList,
        ),
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: searchController,
                        onChanged: (query) => searchProducts(query),
                        decoration: const InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: searchcolor),
                          prefixIcon: Icon(Icons.search, color: maincolor),
                          filled: true,
                          fillColor: seccolor,
                          border: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: maincolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 18),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: List.generate(
                            categories.length,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  productList = [];
                                  currentCategory = categories[index]["type"];
                                  for (int i = 0;
                                      i < mainProductList.length;
                                      i++) {
                                    if (currentCategory ==
                                        mainProductList[i]["type"]) {
                                      productList.add(mainProductList[i]);
                                    }
                                  }
                                  if (currentCategory == "") {
                                    productList = List.from(mainProductList);
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: currentCategory ==
                                          categories[index]['type']
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
                                    color: currentCategory ==
                                            categories[index]['type']
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
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Text(
                            'Items',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: maincolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.all(10),
                      childAspectRatio: 0.9,
                      children: List.generate(productList.length, (index) {
                        final product = productList[index];
                        return GestureDetector(
                          onTap: () async {
                            bool success =
                                await Navigator.of(context).push<bool>(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ProductDetailsScreen(
                                          name: product["name"],
                                          img: product["image"],
                                          price: product["price"],
                                          rate: product["rate"],
                                          about: product["about"],
                                          category: product["category"],
                                        ),
                                      ),
                                    ) ??
                                    false;
                            if (success) {
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(
                              //       content:
                              //           Text('Action completed successfully!')),
                              // );
                            }
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: seccolor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Center(
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                        child: Image.asset(
                                          product["image"],
                                          height: 120,
                                          width: 300,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    product["name"],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: maincolor,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${product["price"]}",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 232, 121, 47),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            toggleFavorite(index);
                                          },
                                          icon: Icon(
                                            Icons.favorite_border,
                                            color: Colors.black,
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

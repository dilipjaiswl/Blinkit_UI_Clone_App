import 'package:blinkit_ui_clone_app/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

import '../widgets/image_bg_text.dart';
import '../widgets/image_with_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Color(0xFFEC0505)),
                  height: 160,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      UiHelper.customText(
                          text: "Blinkit",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 12),
                      UiHelper.customText(
                          text: "16 minutes",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 20),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          UiHelper.customText(
                              text: "Home - ",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 12),
                          UiHelper.customText(
                              text: "Dilip Jaiswal, Hebbal, Blr ",
                              color: Colors.black,
                              fontweight: FontWeight.normal,
                              fontsize: 12),
                        ],
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Search ice-cream",
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          suffixIcon: const Icon(
                            Icons.mic,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  right: 15,
                  top: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black, size: 30),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              decoration: BoxDecoration(color: Color(0xFFEC0505)),
              height: 200,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UiHelper.customImage(image: "image 60.png"),
                      UiHelper.customImage(image: "image 55.png"),
                      UiHelper.customText(
                          text: "Mega Diwali Sale",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 27),
                      UiHelper.customImage(image: "image 60.png"),
                      UiHelper.customImage(image: "image 55.png"),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildCategoryCard("Lights, Diyas & Candles",
                              "assets/images/image 50.png"),
                          SizedBox(
                            width: 3,
                          ),
                          _buildCategoryCard(
                              "Diwali Gifts", "assets/images/image 51.png"),
                          SizedBox(
                            width: 3,
                          ),
                          _buildCategoryCard("Appliances & Gadgets",
                              "assets/images/image 52.png"),
                          SizedBox(
                            width: 3,
                          ),
                          _buildCategoryCard(
                              "Home & Living", "assets/images/image 53.png"),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 8),
                  buildProductCard("candle.png", "Golden Glass Candle", "79"),
                  const SizedBox(width: 8),
                  buildProductCard("image 57.png", "Royal Gulab Jamun", "45"),
                  const SizedBox(width: 8),
                  buildProductCard("image 63.png", "Bikaji Bhujia", "46"),
                  const SizedBox(width: 8),
                  buildProductCard("candle.png", "Golden Glass Candle", "79"),
                  const SizedBox(width: 8),
                  buildProductCard("candle.png", "Golden Glass Candle", "79"),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 1),
                UiHelper.customText(
                    text: "Grocery & Kitchen",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 20),
                SizedBox(
                  height: 1,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomImageWithText(
                          imagePath: "assets/images/veg.png",
                          text: "Vegetables,Fruits"),
                      SizedBox(width: 10),
                      CustomImageWithText(
                          imagePath: "assets/images/flour.png",
                          text: "Atta,Rice"),
                      SizedBox(width: 10),
                      CustomImageWithText(
                          imagePath: "assets/images/ghee.png", text: "Ghee,Oil"),
                      SizedBox(width: 10),
                      CustomImageWithText(
                          imagePath: "assets/images/bread.png",
                          text: "Bread,Biskit")
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildCategoryCard(String title, String imagePath) {
  return Container(
    width: 100,
    height: 120,
    decoration: BoxDecoration(
      color: Color(0xFFEAD3D3),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 5,
          spreadRadius: 2,
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Image.asset(imagePath, height: 80, fit: BoxFit.contain),
      ],
    ),
  );
}

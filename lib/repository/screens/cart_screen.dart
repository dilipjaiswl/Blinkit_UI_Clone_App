



import 'package:blinkit_ui_clone_app/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),

            // Top section with search bar and user icon
            Stack(
              children: [
                UiHelper.customAppbar(),
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

            const SizedBox(height: 10),

            UiHelper.customImage(image: "shopping-cart (1) 1.png"),
            const SizedBox(height: 5),
            UiHelper.customText(
                text: "Reordering will be easy",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 20),
            const SizedBox(height: 5),
            UiHelper.customText(
              text:
              "Items you order will show up here so you can buy them again easily.",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 12,
            ),
            const SizedBox(height: 20),

            Row(
              children: [
                const SizedBox(width: 10),
                UiHelper.customText(
                    text: "Best Seller",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 20),
              ],
            ),

            const SizedBox(height: 20),

            // Horizontal Scroll for Products
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 8),
                  buildProductCard("milk.png", "Amul Fresh Milk", "33"),
                  const SizedBox(width: 8),
                  buildProductCard("potato.png", "Potato (Aaloo)", "45"),
                  const SizedBox(width: 8),
                  buildProductCard("tomato.png", "Hybrid Tomato", "30"),
                  const SizedBox(width: 8),
                  buildProductCard("tomato.png", "Desi Tomato", "38"),
                  buildProductCard("milk.png", "Amul Fresh Milk", "33"),
                  const SizedBox(width: 8),
                  buildProductCard("potato.png", "Potato (Aaloo)", "45"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Helper method to build product cards (Avoids Code Duplication)
  Widget buildProductCard(String imagePath, String productName, String price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            UiHelper.customImage(image: imagePath),
            Positioned(
              left: 66,
              top: 90,
              child: UiHelper.customButton(() {}),
            ),
          ],
        ),
        const SizedBox(height: 5),
        UiHelper.customText(
            text: productName,
            color: Colors.black,
            fontweight: FontWeight.normal,
            fontsize: 10),
        const SizedBox(height: 5),
        Row(
          children: [
            UiHelper.customImage(image: "timer 1.png"),
            const SizedBox(width: 4),
            UiHelper.customText(
                text: "16 MINS",
                color: Colors.black54,
                fontweight: FontWeight.normal,
                fontsize: 10),
          ],
        ),
        Row(
          children: [
            UiHelper.customImage(image: "image 47.png"),
            const SizedBox(width: 4),
            UiHelper.customText(
                text: price,
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 20),
          ],
        ),
      ],
    );
  }
}




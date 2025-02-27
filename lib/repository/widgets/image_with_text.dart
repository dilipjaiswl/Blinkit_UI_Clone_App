import 'package:blinkit_ui_clone_app/repository/widgets/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildProductCard(String imagePath, String productName, String price) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        children: [
          UiHelper.customImage(image: imagePath),
          Positioned(
            left: 66,
            top: 98,
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
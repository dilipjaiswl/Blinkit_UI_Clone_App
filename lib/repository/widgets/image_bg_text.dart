import 'package:flutter/material.dart';

class CustomImageWithText extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color backgroundColor;
  final double imageSize;
  final double textSize;
  final Color textColor;

  const CustomImageWithText({
    super.key,
    required this.imagePath,
    required this.text,
    this.backgroundColor =  const Color(0xFFD9EBEB),
    this.imageSize = 100.0,
    this.textSize = 14.0,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: imageSize, // Adjusted for padding
          width: imageSize  ,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          child: Center(
            child: Image.asset(
              imagePath,
              height: imageSize,
              width: imageSize,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 10), // Space between image and text
        Text(
          text,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.normal,
            color: textColor,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class UiHelper {
  static Widget customImage({required String image}) {
    return Image.asset(
        "assets/images/$image"); // Properly passing the image path
  }

  static Widget customText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      required double fontsize}) {
    return Text(text, style:
          TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight),
    ); // Properly passing the image path
  }

  static customButton(VoidCallback callback) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.greenAccent),
          borderRadius: BorderRadius.circular(4)),
      child: Center(
          child: Text(
        "Add",
        style: TextStyle(fontSize: 10, color: Colors.greenAccent),
      )),
    );
  }

  static customAppbar() {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color:Color(0xFFF7CB45)),
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
    );
  }
}

import 'package:blinkit_ui_clone_app/repository/widgets/image_bg_text.dart';
import 'package:blinkit_ui_clone_app/repository/widgets/image_with_text.dart';
import 'package:blinkit_ui_clone_app/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            UiHelper.customAppbar(),
            const SizedBox(height: 15),
            UiHelper.customText(text: "Grocery & Kitchen", color: Colors.black, fontweight:FontWeight.bold, fontsize: 20),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomImageWithText(imagePath: "assets/images/veg.png", text: "Vegetables,Fruits"),
                  SizedBox(width:10),
                  CustomImageWithText(imagePath: "assets/images/flour.png", text: "Atta,Rice"),
                  SizedBox(width: 10),
                  CustomImageWithText(imagePath: "assets/images/ghee.png", text: "Ghee,Oil"),
                  SizedBox(width: 10),
                  CustomImageWithText(imagePath: "assets/images/bread.png", text: "Bread,Biskit")
                ],
              ),
        
            ),
            const SizedBox(height: 15),
            UiHelper.customText(text: "Snacks,Drinks", color: Colors.black, fontweight:FontWeight.bold, fontsize: 20),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomImageWithText(imagePath: "assets/images/chips.png", text: "Chips,Namkeen"),
                  SizedBox(width:10),
                  CustomImageWithText(imagePath: "assets/images/sweet.png", text: "Sweet,Chocklate"),
                  SizedBox(width: 10),
                  CustomImageWithText(imagePath: "assets/images/drink.png", text: "Drinks & Juices"),
                  SizedBox(width: 10),
                  CustomImageWithText(imagePath: "assets/images/bread.png", text: "Bread,Biskit"),
                  SizedBox(width: 10),
                  CustomImageWithText(imagePath: "assets/images/sauce.png", text: "Sauce")
                ],
              ),
        
            ),
            const SizedBox(height: 15),
            UiHelper.customText(text: "Household Essentials", color: Colors.black, fontweight:FontWeight.bold, fontsize: 20),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomImageWithText(imagePath: "assets/images/detergent.png", text: "Detergent"),
                  SizedBox(width:10),
                  CustomImageWithText(imagePath: "assets/images/soap.png", text: "Soap"),
                  SizedBox(width: 10),
                  CustomImageWithText(imagePath: "assets/images/sofa.png", text: "Furniture"),
                  SizedBox(width: 10),
                  CustomImageWithText(imagePath: "assets/images/cent.png", text: "Perfumes"),
                  SizedBox(width: 10),
                  CustomImageWithText(imagePath: "assets/images/massageoil.png", text: "Hair Oil")
                ],
              ),
        
            ),
        
          ],
        ),
      ),
    );
  }
}

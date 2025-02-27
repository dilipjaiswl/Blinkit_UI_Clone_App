

import 'package:blinkit_ui_clone_app/repository/screens/bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/ui_helper.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
         UiHelper.customImage(image:"Blinkit Onboarding Screen.png" ),
           SizedBox(height: 5,),
          UiHelper.customImage(image: "blinkitLogo.png"),
          UiHelper.customImage(image: "India’s last minute app (1).png"),
         Padding(
           padding: const EdgeInsets.only(left: 10),
           child: Card(
             elevation: 4,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10),
             ),
             child: Container(
               height: 200,
               width: 380,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                     color: Color(0xFFFFFFFF),
               ),
               child: Column(
                 children: [
                   SizedBox(height: 10,),
                   UiHelper.customText(text: "Dilip Jaiswal", color: Color(0xFF000000), fontsize: 20, fontweight: FontWeight.normal),
                   SizedBox(height: 10,),
                   UiHelper.customText(text: "969688XXXX", color: Colors.black26, fontsize: 20, fontweight: FontWeight.normal),
                   SizedBox(height: 10,),
                   SizedBox(height: 48,width: 295,
                     child: ElevatedButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));
                     },style: ElevatedButton.styleFrom(
                         backgroundColor:Colors.red,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(12)
                         )
                     ), child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         UiHelper.customText(text: "Login with", color:Colors.white, fontweight: FontWeight.bold, fontsize: 17),
                         SizedBox(width: 5,),
                         UiHelper.customImage(image: "zomato.png"),
                       ],
                     )),
                   ),
                   SizedBox(height: 10,),
                   UiHelper.customText(text: "Access your saved addresses from Zomato automatically!", color:Colors.black26, fontweight: FontWeight.normal, fontsize: 13),
                   SizedBox(height: 10,),
                   UiHelper.customText(text: "or login with phone number", color:Color(0xFF269237), fontweight: FontWeight.normal, fontsize: 15),

                 ],
               ),
             ),
           ),
         )
        ],
      ),
    );
  }
}


// body:Column(
// children: [
// SizedBox(height:30,),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// UiHelper.customImage(image:"banana.png"),
// UiHelper.customImage(image:"pampers.png"),
// UiHelper.customImage(image:"chocklate.png"),
// UiHelper.customImage(image:"perfume.png")
// ],
// ),
// SizedBox(height: 15,),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// UiHelper.customImage(image:"nescafe.png"),
// UiHelper.customImage(image:"spoon.png"),
// UiHelper.customImage(image:"vanilla.png"),
// UiHelper.customImage(image:"oil.png")
// ],
// ),
// SizedBox(height: 15,),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// UiHelper.customImage(image:"veg.png"),
// UiHelper.customImage(image:"gobi.png"),
// UiHelper.customImage(image:"oilkit.png"),
// ],
// ),
//
// ],
// ),
// );



// Card(
// elevation: 4,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10),
// ),
// child: Container(
// height: 60,
// width: 250,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Colors.red,
// ),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// UiHelper.customText(text: "Login with", color:Colors.white, fontweight: FontWeight.bold, fontsize: 15),
// UiHelper.customImage(image: "zomato.png"),
// ],
// ),
// ),
// ),
import 'package:blinkit_ui_clone_app/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_screen.dart';

class PrintScreen extends StatefulWidget {
  const PrintScreen({super.key});

  @override
  State<PrintScreen> createState() => _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF0CE),
      body:SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
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
            const SizedBox(height: 34),
            UiHelper.customText(text: "Print Store", color:Colors.black, fontweight: FontWeight.bold, fontsize: 40),
            SizedBox(
              height: 10,
            ),
            UiHelper.customText(text: "Blinkit ensures secure prints at every stage", color: Color(0xFf9C9C9C), fontweight: FontWeight.bold, fontsize:15),
            SizedBox(height: 40,),
            Container(
              height:  183,
              width: 361,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                color: Colors.white
              ),
              child: Stack(
                children: [
                  Padding(
                  padding: EdgeInsets.only(left: 10,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UiHelper.customText(text: "Documents", color:Colors.black, fontweight: FontWeight.bold, fontsize: 18),
                      Row(
                        children: [
                          SizedBox(height: 25,),
                          UiHelper.customImage(image: "diamond.png"),
                          SizedBox(width: 10,),
                          UiHelper.customText(text: "Price starting at rs 3/page", color:Color(0xFf9C9C9C), fontweight: FontWeight.bold, fontsize: 16)
                        ],
                      ),Row(
                        children: [
                          SizedBox(height: 25,),
                          UiHelper.customImage(image: "diamond.png"),
                          SizedBox(width:10,),
                          UiHelper.customText(text: "Paper quality: 70 GSM", color:Color(0xFf9C9C9C), fontweight: FontWeight.bold, fontsize: 16)
                        ],
                      ),Row(
                        children: [
                          SizedBox(height: 25),
                          UiHelper.customImage(image: "diamond.png"),
                          SizedBox(width: 10,),
                          UiHelper.customText(text: "Single side prints", color:Color(0xFf9C9C9C), fontweight: FontWeight.bold, fontsize: 16)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10),
                        child: SizedBox(
                          height: 50,width: 200,
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));
                          },style: ElevatedButton.styleFrom(
                              backgroundColor:Color(0xFF27AF34),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ), child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.customText(text: "Upload Files", color:Colors.white, fontweight: FontWeight.bold, fontsize: 17),
                            ],
                          )),),
                      ),
                    ],
                  ),
                ),
                  Positioned(
                    top: 40,
                      left: 250,
                      child: UiHelper.customImage(image: "document.png"))
                ]
              ),
            )
        
          ],
        ),
      )
    );
  }
}


import 'package:blinkit_ui_clone_app/repository/screens/cart_screen.dart';
import 'package:blinkit_ui_clone_app/repository/screens/category_screen.dart';
import 'package:blinkit_ui_clone_app/repository/screens/home_screen.dart';
import 'package:blinkit_ui_clone_app/repository/screens/print_screen.dart';
import 'package:blinkit_ui_clone_app/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex =0;
  List<Widget> pages=[
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    PrintScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
    bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon:UiHelper.customImage(image: "home 1.png"),label: "Home"),
      BottomNavigationBarItem(icon:UiHelper.customImage(image: "category 1.png"),label: "Category"),
      BottomNavigationBarItem(icon:UiHelper.customImage(image: "shopping-bag 1.png"),label: "Cart"),
      BottomNavigationBarItem(icon:UiHelper.customImage(image: "printer 1.png"),label: "Printer"),
    ],
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index){
      setState(() {
currentIndex = index;
      });
    },),
    );
  }
}

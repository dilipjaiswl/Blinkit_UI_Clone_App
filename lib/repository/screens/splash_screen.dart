import 'dart:async';

import 'package:blinkit_ui_clone_app/repository/screens/login_screen.dart';
import 'package:blinkit_ui_clone_app/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

import '../../domains/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration (seconds:3),(){
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scafffoldbackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.customImage(image:"blinkit.png")
        ],
      ),
    );
  }
}

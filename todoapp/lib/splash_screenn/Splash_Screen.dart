import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:todoapp/home_screen/Home_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    final timer = Timer(
      const Duration(seconds: 2),
      () {
        Get.off(HomeScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Icon(
          Icons.done,
          size: 60,
        ),
      ),
    );
  }
}

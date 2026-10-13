import 'package:flutter/material.dart';
import 'package:sleeping_barber/resources/images.dart';
import 'dart:async';
import '../resources/colors.dart';
import 'package:sleeping_barber/screens/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 200,
          margin: EdgeInsets.all(20),
          child: Image.asset(i2[0], fit: BoxFit.cover),
        ),
      ),
      backgroundColor: AppColors.background,
    );
  }
}

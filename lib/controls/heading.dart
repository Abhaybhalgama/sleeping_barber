import 'package:flutter/material.dart';
import 'package:sleeping_barber/resources/colors.dart';

class Heading extends StatelessWidget {
  final String title;

  const Heading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
      title,

      style: const TextStyle(
        decoration: TextDecoration.underline,
        decorationThickness: 2,
        fontSize: 50,
        fontFamily: "serif",
        color: AppColors.textBlack,
      ),

      )
    );
  }
}

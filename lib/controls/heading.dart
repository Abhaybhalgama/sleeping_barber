import 'package:flutter/material.dart';
import 'package:sleeping_barber/resources/colors.dart';

class Heading extends StatelessWidget {
  final String title;
  final double size;

  const Heading({super.key, required this.title, this.size = 50});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,

        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationThickness: 2,
          fontSize: size,
          fontFamily: "serif",
          color: AppColors.textBlack,
        ),
      ),
    );
  }
}

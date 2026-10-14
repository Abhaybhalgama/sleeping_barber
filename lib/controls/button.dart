import 'package:flutter/material.dart';
import '../resources/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Color backgroundColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 50.0,
    this.width = 30.0,
    this.backgroundColor = AppColors.login,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.login,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.textBlack,
            fontSize: 16,
            fontFamily: 'serif',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

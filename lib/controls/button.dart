import 'package:flutter/material.dart';
import '../resources/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height; 
  final double width;  

  const CustomButton({
    required this.text,
    required this.onPressed,
    this.height = 50.0,          
    this.width = double.infinity, 
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,   
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.textfield,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.login,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
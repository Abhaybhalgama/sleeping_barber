import 'package:flutter/material.dart';
import '../resources/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Color backgroundColor;
  final double fontsize;
  final double radius;
  final Alignment? positioned;
 final EdgeInsetsGeometry? padding;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 50.0,
    this.width = 30.0,
    this.backgroundColor = AppColors.login,
    this.fontsize = 19,
    this.radius = 35,
    this.positioned,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          alignment: positioned,
          padding: padding ?? EdgeInsets.zero,
          overlayColor: Colors.transparent,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.textBlack,
            fontSize: fontsize,
            fontFamily: 'serif',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

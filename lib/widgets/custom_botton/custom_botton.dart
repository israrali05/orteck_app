import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color bgcolor;
  final double radiusValue;

  final TextStyle? textStyle;
  final void Function() ontap;
  const CustomBotton(
      {super.key,
      required this.height,
      required this.width,
      required this.text,
      required this.ontap,
      required this.bgcolor,
      this.textStyle,
      required this.radiusValue});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: bgcolor, // Background color
          borderRadius: BorderRadius.circular(radiusValue), // Border radius
        ),
        height: height,
        width: width,
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}

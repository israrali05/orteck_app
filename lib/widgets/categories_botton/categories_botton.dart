import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orteck_app/utils/app_colors.dart';

class CategoriesBotton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color bgcolor;
  final double radiusValue;

  final TextStyle? textStyle;
  final void Function() ontap;
  const CategoriesBotton(
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
        padding: EdgeInsets.only(left: 10.r),
        decoration: BoxDecoration(
          color: bgcolor, // Background color
          borderRadius: BorderRadius.circular(radiusValue), // Border radius
        ),
        height: height,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Text(text, style: textStyle),
            Icon(
              Icons.arrow_drop_down_rounded,
              size: 25,
              color: AppColors.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}

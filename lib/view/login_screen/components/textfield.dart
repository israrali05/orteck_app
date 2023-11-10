import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orteck_app/utils/app_colors.dart';

class CustomWidgetField extends StatelessWidget {
  final String? textlabel;
  final String texthint;
  final bool? obsecuretext;
  final Icon icon;
  final IconButton? suffixIcon;
  const CustomWidgetField({
    super.key,
    this.textlabel,
    required this.texthint,
    required this.icon,
    this.obsecuretext,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0.r),
          topRight: Radius.circular(10.0.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 55).r,
            child: Text(
              textlabel ?? " ",
              style: TextStyle(
                  color: AppColors.blackColor.withOpacity(0.6),
                  fontWeight: FontWeight.w600,
                  height: 0),
            ),
          ),
          Container(
            height: 35.h,
            padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
            child: TextField(
              obscureText: obsecuretext ?? false,
              cursorHeight: 20,
              // Set the cursor height
              cursorColor: AppColors.primaryColor,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10.r),
                  border: InputBorder.none,
                  prefixIcon: icon,
                  hintText: texthint,
                  hintStyle: TextStyle(
                      fontSize: 13,
                      height: 0,
                      color: Colors.black.withOpacity(0.6)),
                  suffixIcon: suffixIcon),
            ),
          ),
          Container(
            width: double.infinity,
            height: 2.0,
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}

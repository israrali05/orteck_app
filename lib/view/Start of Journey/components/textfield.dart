import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orteck_app/utils/app_colors.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50.h,
        child: TextField(
          cursorColor: Colors.grey.withOpacity(0.4),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0).r,
              borderSide: const BorderSide(color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0).r,
              borderSide: const BorderSide(color: AppColors.secondaryColor),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.grey),
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
          ),
        ));
  }
}

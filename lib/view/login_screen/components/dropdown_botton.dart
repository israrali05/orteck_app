import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orteck_app/controller/login/login_controller.dart';
import 'package:provider/provider.dart';

import '../../../utils/app_colors.dart';

class DropDownBotton extends StatelessWidget {
  const DropDownBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Consumer<DropdownProvider>(
          builder: (context, provider, child) {
            return Container(
              width: 120, // Set the width to your desired value
              height: 35,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(
                    20), // Adjust the value to control rounding
              ), // Set the height to your desired value
              margin: EdgeInsets.symmetric(horizontal: 20.r),
              padding: EdgeInsets.symmetric(
                  horizontal: 15.r,
                  vertical: 0.r), // Set the container color
              alignment: Alignment.center,
              child: DropdownButton<String>(
                underline: const SizedBox(),
                isExpanded: true,
                iconEnabledColor: AppColors.whiteColor,
                value: provider.selectedItem,
                style: const TextStyle(color: AppColors.whiteColor),
                items: <String>[
                  'English',
                  'Arabic',
                  'Spanish',
                ].map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                          backgroundColor: AppColors.primaryColor
                          // color: AppColors.blackColor
                          ),
                    ),
                  );
                }).toList(),
                onChanged: (String? selectedItem) {
                  if (selectedItem != null) {
                    provider.setSelectedItem(selectedItem);
                  }
                },
              ),
            );
          },
        ),
      ],
    );
  }
}

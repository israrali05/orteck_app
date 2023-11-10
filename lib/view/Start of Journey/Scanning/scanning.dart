import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/utils/app_styles.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';

class ScanningScreen extends StatelessWidget {
  const ScanningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        surfaceTintColor: AppColors.whiteColor,
        title: Text("Scanning..."),
        automaticallyImplyLeading: false,
        elevation: 1,
        shadowColor: AppColors.blackColor,
      ),
      body: ListView(children: [
        CustomSizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed("/PrinterScreen");
                },
                child: Text(
                  "Galaxy Watch(D7CA)",
                  style: AppStyles.appfont400Styleblack,
                ),
              ),
              Text("Paired",
                  style: AppStyles.appfont400Styleblack.copyWith(
                    color: AppColors.blackColor.withOpacity(0.4),
                  ))
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "SamSung new Ways",
                style: AppStyles.appfont400Styleblack,
              ),
              Text("Paired",
                  style: AppStyles.appfont400Styleblack.copyWith(
                    color: AppColors.blackColor.withOpacity(0.4),
                  ))
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Text(
            "My Toyata",
            style: AppStyles.appfont400Styleblack,
          ),
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Text(
            "Hp Priter",
            style: AppStyles.appfont400Styleblack,
          ),
        ),
        Divider()
      ]),
    );
  }
}

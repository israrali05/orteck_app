import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/utils/app_images.dart';
import 'package:orteck_app/utils/app_styles.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';

class BottonWidget extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final void Function() ontap;
  const BottonWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.text,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(50.r)),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppStyles.appfont400Style
                    .copyWith(color: AppColors.whiteColor),
              ),
              CustomSizedBox(
                width: 5.w,
              ),
              Image.asset(
                height: 30,
                AppImages.bottonIcon,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

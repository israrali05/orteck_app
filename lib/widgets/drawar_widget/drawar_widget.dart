import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/view/home/componects/drawar_widget.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';

class Drawar_widget extends StatelessWidget {
  const Drawar_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250.w,
      backgroundColor: AppColors.whiteColor,
      surfaceTintColor: AppColors.whiteColor,
      child: SingleChildScrollView(
        child: Column(children: [
          const DrawaerWidget(),
          CustomSizedBox(
            height: 20,
          ),
          const DrawarList()
        ]),
      ),
    );
  }
}

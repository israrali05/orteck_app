import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/utils/app_images.dart';
import 'package:orteck_app/view/home/componects/drawar_widget.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 1,
          shadowColor: AppColors.blackColor,
          title: Text("Orteck"),
          centerTitle: true,
        ),
        drawer: Drawer(
          width: 250.w,
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: AppColors.whiteColor,
          child: SingleChildScrollView(
            child: Column(children: [
              DrawaerWidget(),
              CustomSizedBox(
                height: 20,
              ),
              DrawarList()
            ]),
          ),
        ),
        body: Center(
          child: Image.asset(
            AppImages.applogoPicture,
          ),
        ));
  }
}

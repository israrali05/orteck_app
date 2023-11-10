import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/utils/app_styles.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';

class DrawaerWidget extends StatelessWidget {
  const DrawaerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: AppColors.whiteColor,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          radius: 50.r,
          backgroundColor: Colors.grey.withOpacity(0.3),
          child: Icon(
            Icons.person_outline,
            size: 70.sp,
          ),
        ),
        Text(
          "14",
          style:
              AppStyles.appfont400Style.copyWith(color: AppColors.blackColor),
        ),
      ]),
    );
  }
}

class DrawarList extends StatelessWidget {
  const DrawarList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Column(children: [
        DrawalistItems(
          icon: Icon(
            Icons.maps_home_work_outlined,
            size: 25.sp,
          ),
          ontap: () {
            Get.toNamed("/start_of_journey");
          },
          title: "Start of Journey",
        ),
        DrawalistItems(
          icon: Icon(
            Icons.auto_graph_sharp,
            size: 25.sp,
          ),
          ontap: () {
            Get.toNamed("/start_of_journey");
          },
          title: "Timeline",
        ),
        DrawalistItems(
          icon: Icon(
            Icons.access_time_outlined,
            size: 25.sp,
          ),
          ontap: () {
            Get.toNamed("/start_of_journey");
          },
          title: "Reports",
        ),
        DrawalistItems(
          icon: Icon(
            Icons.search_outlined,
            size: 25.sp,
          ),
          ontap: () {
            Get.toNamed("/start_of_journey");
          },
          title: "Printer",
        ),
        DrawalistItems(
          icon: Icon(
            Icons.image_outlined,
            size: 25.sp,
          ),
          ontap: () {
            Get.toNamed("/start_of_journey");
          },
          title: "Gallery",
        ),
        DrawalistItems(
          icon: Icon(
            Icons.badge_sharp,
            size: 25.sp,
          ),
          ontap: () {
            Get.toNamed("/start_of_journey");
          },
          title: "Load Items",
        ),
        DrawalistItems(
          icon: Icon(
            Icons.badge_outlined,
            size: 25.sp,
          ),
          ontap: () {
            Get.toNamed("/start_of_journey");
          },
          title: "Unload Items",
        ),
        DrawalistItems(
          icon: Icon(
            Icons.insert_page_break_rounded,
            size: 25.sp,
          ),
          ontap: () {
            Get.toNamed("/start_of_journey");
          },
          title: "Stock Taking",
        ),
        DrawalistItems(
          icon: Icon(
            Icons.login_outlined,
            size: 25.sp,
          ),
          ontap: () {
            Get.toNamed("/start_of_journey");
          },
          title: "Logout",
        ),
      ]),
    );
  }
}

class DrawalistItems extends StatelessWidget {
  final Icon icon;
  final String title;
  final void Function() ontap;

  const DrawalistItems(
      {super.key,
      required this.icon,
      required this.title,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40).r,
            child: Row(children: [
              icon,
              CustomSizedBox(
                width: 10,
              ),
              Text(title,
                  style: AppStyles.appfont400Style
                      .copyWith(color: AppColors.blackColor, fontSize: 16)),
            ]),
          ),
          const Divider(),
          CustomSizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

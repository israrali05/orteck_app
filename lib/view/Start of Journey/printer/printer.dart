import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orteck_app/controller/printer_controller/printer_controller.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/utils/app_styles.dart';
import 'package:orteck_app/widgets/custom_botton/custom_botton.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';
import 'package:provider/provider.dart';

class PrinterScreen extends StatelessWidget {
  const PrinterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Printer"),
        surfaceTintColor: AppColors.whiteColor,
        centerTitle: true,
        elevation: 1,
        shadowColor: AppColors.blackColor,
      ),
      body: Container(
        padding: EdgeInsets.all(10.r),
        margin: EdgeInsets.all(10.r),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(
              0.2), // Specify the background color of the container
          borderRadius: BorderRadius.circular(20.r), // Set rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Specify the shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 7, // Blur radius
              offset: Offset(0, 3), // Offset in the x and y directions
            ),
          ],
        ),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Invoice",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
          CustomSizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order no :",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "2688",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "No of Items :",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "1",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount :",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "0",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Amount :",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "0.986",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Grand Total :",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "0.556",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          CustomSizedBox(
            height: 20.h,
          ),
          CustomBotton(
              height: 40,
              width: double.infinity,
              text: "PRINT",
              textStyle: TextStyle(color: AppColors.primaryColor),
              ontap: () {},
              bgcolor: AppColors.secondaryColor,
              radiusValue: 20),
          CustomSizedBox(
            height: 5.h,
          ),
          CustomSizedBox(
            height: 5.h,
          ),
          CustomBotton(
              height: 40,
              width: double.infinity,
              text: "PAIR WITH PRINTER",
              textStyle: TextStyle(color: AppColors.primaryColor),
              ontap: () {},
              bgcolor: AppColors.secondaryColor,
              radiusValue: 20),
          CustomSizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Character Size",
                style: AppStyles.appfont400Styleblack
                    .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("1"),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          Text(
            "Justification",
            style: AppStyles.appfont400Styleblack
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Consumer<PrinterControoler>(builder: (context, provider, child) {
            return Column(
              children: [
                RadioListTile(
                  activeColor: AppColors.secondaryColor,
                  contentPadding: EdgeInsets.zero,
                  title: Text('Left'),
                  value: 1,
                  groupValue: provider.selectedValue,
                  onChanged: (value) {
                    provider.selectedValues = value!;
                  },
                ),
                RadioListTile(
                  activeColor: AppColors.secondaryColor,
                  contentPadding: EdgeInsets.zero,
                  title: Text('Center'),
                  value: 2,
                  groupValue: provider.selectedValue,
                  onChanged: (value) {
                    provider.selectedValues = value!;
                  },
                ),
                RadioListTile(
                  activeColor: AppColors.secondaryColor,
                  contentPadding: EdgeInsets.zero,
                  title: Text('Right'),
                  value: 3,
                  groupValue: provider.selectedValue,
                  onChanged: (value) {
                    provider.selectedValues = value!;
                  },
                ),
              ],
            );
          }),
          CustomSizedBox(
            height: 70.h,
          ),
          CustomBotton(
              height: 50,
              width: double.infinity,
              text: "CANCEL",
              textStyle: TextStyle(color: AppColors.primaryColor),
              ontap: () {},
              bgcolor: AppColors.secondaryColor,
              radiusValue: 20),
        ]),
      ),
    );
  }
}

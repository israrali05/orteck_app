import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orteck_app/model/product_model/product_model.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/utils/app_styles.dart';
import 'package:orteck_app/widgets/custom_botton/custom_botton.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';
import 'package:orteck_app/widgets/dotted_Line_Divider/dotted_line_divider.dart';

class AddtoCartScreen extends StatelessWidget {
  final ProductModel productModel;
  const AddtoCartScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        surfaceTintColor: AppColors.whiteColor,
        title: Text("My Cart"),
        shadowColor: AppColors.blackColor,
        centerTitle: true,
        elevation: 1,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 20.r),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 20.r),
              // width: 200.w,
              // height: 200.h,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,

                borderRadius:
                    BorderRadius.circular(10.r), // Optional: Add border radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(0.2), // Specify the shadow color
                    spreadRadius: 1, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: Offset(0, 3), // Offset in the x and y directions
                  ),
                ],
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.edit,
                      color: AppColors.primaryColor,
                    ),
                    Icon(
                      Icons.delete,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.secondaryColor,
                          width: 5.0,
                        ),
                        borderRadius: BorderRadius.circular(
                            12.0), // Adjust the radius as needed
                      ),
                      child: Image.asset(
                        productModel.img,
                        width: 100.0.w, // Adjust the width as needed
                        height: 90.0.h, // Adjust the height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                    CustomSizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productModel.productName,
                          style: AppStyles.appfont400Style.copyWith(
                              color: AppColors.blackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Text("1.0 Box"),
                        Text("price: " + productModel.price.toString()),
                        Text("Total Tax: 16%"),
                        Text(
                          "Total Price: 0.55465",
                          style: AppStyles.appfont400Style.copyWith(
                              color: AppColors.blackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Bonus 0",
                          style: AppStyles.appfont400Styleblack.copyWith(
                            color: AppColors.blackColor.withOpacity(0.2),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ]),
            ),
            CustomSizedBox(height: 40.h),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total: ",
                      style: AppStyles.appfont400Style.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "0.560 JO",
                      style: AppStyles.appfont400Style.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.r),
                  child: DottedLineDivider(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Discount: ",
                      style: AppStyles.appfont400Style.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "0.00 JO",
                      style: AppStyles.appfont400Style.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.r),
                  child: DottedLineDivider(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Tax: ",
                      style: AppStyles.appfont400Style.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "0.0090 JO",
                      style: AppStyles.appfont400Style.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.r),
                  child: DottedLineDivider(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Grand Total: ",
                      style: AppStyles.appfont400Style.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      productModel.price.toString() + " JO",
                      style: AppStyles.appfont400Style.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.r),
                  child: DottedLineDivider(),
                ),
              ],
            ),
            CustomSizedBox(
              height: 50.h,
            ),
            Text(
              "Clear Cart",
              style: AppStyles.appfont400Style.copyWith(
                  color: AppColors.secondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Payment Type:: Cash",
              style: AppStyles.appfont400Style.copyWith(
                  color: AppColors.secondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            CustomSizedBox(
              height: 120.h,
            ),
            CustomBotton(
                height: 40,
                width: double.infinity,
                text: "SUBMIT",
                textStyle: AppStyles.appfont400Styleblack
                    .copyWith(color: AppColors.whiteColor),
                ontap: () {
                  Get.toNamed("/scanningScreen");
                },
                bgcolor: AppColors.secondaryColor,
                radiusValue: 20)
          ],
        ),
      ),
    );
  }
}

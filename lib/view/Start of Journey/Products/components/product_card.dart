import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orteck_app/model/product_model/product_model.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/utils/app_images.dart';
import 'package:orteck_app/utils/app_styles.dart';
import 'package:orteck_app/view/Start%20of%20Journey/add_to_cart/add-to_cart.dart';
import 'package:orteck_app/widgets/custom_botton/custom_botton.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 470.h,
      child: ListView.builder(
          itemCount: productlist.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                  top: 5.r, right: 5.r, left: 5.r, bottom: 20.r),
              padding: EdgeInsets.all(20.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(0.2), // Specify the shadow color
                    spreadRadius: 0.5, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: Offset(0, 3), // Offset in the x and y directions
                    // offset: Offset(0, 3), // chs the position of the shadow
                  ),
                ],
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                              width: 5.0.w,
                            ),
                          ),
                          child: Image.asset(
                            productlist[index].img,
                            width: 80.0.w, // Adjust the width as needed
                            height: 70.0.h, // Adjust the height as neededp
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
                              productlist[index].productName,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackColor),
                            ),
                            CustomSizedBox(
                              height: 2,
                            ),
                            Text(
                                "Price: " + productlist[index].price.toString(),
                                style: AppStyles.appfont400Styleblack),
                            CustomSizedBox(
                              height: 2,
                            ),
                            Text(
                                "Stock: " + productlist[index].stock.toString(),
                                style: AppStyles.appfont400Styleblack),
                            CustomSizedBox(
                              height: 30.h,
                            ),
                            Row(
                              children: [
                                CustomBotton(
                                    height: 35.h,
                                    width: 30.w,
                                    text: "-",
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        // fontWeight: FontWeight.w400,
                                        color: AppColors.whiteColor),
                                    ontap: () {},
                                    bgcolor: AppColors.secondaryColor,
                                    radiusValue: 0),
                                CustomSizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "1",
                                  style: AppStyles.appfont400Styleblack,
                                ),
                                CustomSizedBox(
                                  width: 20.w,
                                ),
                                CustomBotton(
                                    height: 35.h,
                                    width: 30.w,
                                    text: "+",
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        // fontWeight: FontWeight.w400,
                                        color: AppColors.whiteColor),
                                    ontap: () {},
                                    bgcolor: AppColors.secondaryColor,
                                    radiusValue: 0),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset(
                      AppImages.allCustomerInfopng,
                      height: 25,
                    )
                  ],
                ),
                CustomSizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBotton(
                        height: 29,
                        width: 125,
                        text: "Show Details",
                        textStyle: AppStyles.appfont400Styleblack
                            .copyWith(color: AppColors.whiteColor),
                        ontap: () {},
                        bgcolor: AppColors.secondaryColor,
                        radiusValue: 20),
                    CustomBotton(
                        height: 29,
                        width: 115,
                        text: "Add to Cart",
                        textStyle: AppStyles.appfont400Styleblack
                            .copyWith(color: AppColors.whiteColor),
                        ontap: () {
                          Get.to(() => AddtoCartScreen(
                                productModel: ProductModel(
                                    img: productlist[index].img,
                                    productName: productlist[index].productName,
                                    price: productlist[index].price,
                                    stock: productlist[index].stock),
                              ));
                        },
                        bgcolor: AppColors.secondaryColor,
                        radiusValue: 20),
                  ],
                )
              ]),
            );
          }),
    );
  }
}

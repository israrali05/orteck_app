import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orteck_app/model/product_model/product_model.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/utils/app_images.dart';
import 'package:orteck_app/utils/app_styles.dart';
import 'package:orteck_app/widgets/categories_botton/categories_botton.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';

class HistoryTabComponent extends StatelessWidget {
  const HistoryTabComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CategoriesBotton(
              height: 35,
              width: double.infinity,
              text: "All Category",
              textStyle: TextStyle(fontSize: 16, color: AppColors.primaryColor),
              ontap: () {},
              bgcolor: AppColors.secondaryColor,
              radiusValue: 20),
        ),
        SizedBox(
          child: Container(
            // padding: EdgeInsets.all(15.r),
            // margin: EdgeInsets.only(bottom: 10.r),
            height: 500.h,
            child: ListView.builder(
                itemCount: productlist.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10.r),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black
                              .withOpacity(0.1), // Specify the shadow color
                          spreadRadius: 0.1, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset:
                              Offset(0, 3), // Offset in the x and y directions
                          // offset: Offset(0, 3), // chs the position of the shadow
                        ),
                      ],
                    ),
                    child: Column(children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue,
                                width: 5.0.w,
                              ),
                              borderRadius: BorderRadius.circular(
                                  12.0), // Adjust the radius as needed
                            ),
                            child: Image.asset(
                              productlist[index].img,
                              width: 90.0.w, // Adjust the width as needed
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "المنتج هو\n الأفضل/على الإطلاق",
                                    textAlign: TextAlign.center,
                                  ),
                                  CustomSizedBox(
                                    width: 10,
                                  ),
                                  Text("23/4/1938")
                                ],
                              ),
                              CustomSizedBox(
                                height: 20.h,
                              ),
                              Text("Null",
                                  style: AppStyles.appfont400Styleblack
                                      .copyWith(fontWeight: FontWeight.bold)),
                              CustomSizedBox(
                                height: 2,
                              ),
                              Text("Invoice Order Sent",
                                  style: AppStyles.appfont400Styleblack
                                      .copyWith(fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            AppImages.allCustomerInfopng,
                            height: 25.h,
                          )
                        ],
                      )
                    ]),
                  );
                }),
          ),
        )
      ],
    );
  }
}

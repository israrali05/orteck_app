import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orteck_app/model/transaction_model/transaction_model.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/utils/app_styles.dart';
import 'package:orteck_app/widgets/custom_botton/custom_botton.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';

class TransactionTabComponents extends StatelessWidget {
  const TransactionTabComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomSizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 620.h,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 25,
              // mainAxisExtent: 10 // Number of columns
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              // Return a grid item widget
              return GestureDetector(
                onTap: () {
                  index == 6 ? Get.toNamed("/productScreen") : null;
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.r, vertical: 5.r),
                  // height: 180,
                  // padding:
                  //     EdgeInsets.symmetric(horizontal: 20.r, vertical: 5.r),
                  // width: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.greyColor.withOpacity(0.4)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40.r,
                        backgroundColor: index == 1
                            ? Colors.red.shade400
                            : index == 2
                                ? Colors.green.shade600
                                : index == 3
                                    ? Colors.blue.shade500
                                    : index == 6
                                        ? Colors.yellow.shade400
                                        : index == 7
                                            ? Colors.orange.shade600
                                            : Colors.pink,
                        child: Image.asset(
                          transactionModel[index].img,
                          height: 40.h,
                        ),
                      ),
                      CustomSizedBox(
                        height: 5.h,
                      ),
                      Text(
                        transactionModel[index].text,
                        textAlign: TextAlign.center,
                        style: AppStyles.appfont400Style.copyWith(
                            color: AppColors.secondaryColor, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        CustomSizedBox(
          height: 5.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10).r,
          child: CustomBotton(
              height: 40.h,
              width: double.infinity,
              text: "Statement",
              textStyle: AppStyles.appfont400Style
                  .copyWith(fontSize: 12, color: AppColors.whiteColor),
              ontap: () {},
              bgcolor: AppColors.secondaryColor,
              radiusValue: 20),
        )
      ],
    );
  }
}

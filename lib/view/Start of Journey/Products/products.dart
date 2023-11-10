import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orteck_app/model/product_model/product_model.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/view/Start%20of%20Journey/Products/components/product_card.dart';
import 'package:orteck_app/view/Start%20of%20Journey/components/textfield.dart';
import 'package:orteck_app/widgets/categories_botton/categories_botton.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 1,
        shadowColor: AppColors.blackColor,
        surfaceTintColor: AppColors.whiteColor,
        title: const Text("Products"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.r, vertical: 10),
        child: ListView(children: [
          const SearchTextFieldWidget(),
          CustomSizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoriesBotton(
                    bgcolor: AppColors.secondaryColor,
                    height: 30,
                    width: 120,
                    ontap: () {},
                    radiusValue: 20,
                    text: "All Category",
                    textStyle: TextStyle(color: AppColors.primaryColor),
                  ),
                  CustomSizedBox(
                    width: 8.r,
                  ),
                  CategoriesBotton(
                    bgcolor: AppColors.secondaryColor,
                    height: 30,
                    width: 120,
                    ontap: () {},
                    radiusValue: 20,
                    text: "Sub Category",
                    textStyle: TextStyle(color: AppColors.primaryColor),
                  ),
                ],
              ),
              Icon(
                Icons.filter_alt_outlined,
                size: 30,
              )
            ],
          ),
          CustomSizedBox(
            height: 20,
          ),
          ProductCardWidget()
        ]),
      ),
    );
  }
}

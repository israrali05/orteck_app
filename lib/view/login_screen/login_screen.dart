import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orteck_app/controller/login/login_controller.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/utils/app_images.dart';
import 'package:orteck_app/utils/app_styles.dart';
import 'package:orteck_app/view/login_screen/components/dropdown_botton.dart';
import 'package:orteck_app/view/login_screen/components/textfield.dart';
import 'package:orteck_app/widgets/botton_widget/botton_widget.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 70.h),
          const DropDownBotton(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 25.r, vertical: 10.r),
            margin: EdgeInsets.symmetric(horizontal: 20.r, vertical: 15.r),
            decoration: BoxDecoration(
              color: Colors.white, // Background color of the container
              borderRadius: BorderRadius.circular(
                  20), // Adjust the value to control rounding
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  blurRadius: 5, // Spread radius
                  offset: const Offset(
                      0, 4), // Shadow offset (vertical and horizontal)
                ),
              ],
            ),
            child: Column(children: [
              Image.asset(AppImages.applogoPicture, height: 100),
              CustomSizedBox(
                height: 20,
              ),
              const CustomWidgetField(
                texthint: "Username or Email",
                textlabel: "Username or Email Address",
                icon: Icon(
                  Icons.email_rounded,
                  color: AppColors.primaryColor,
                  size: 20,
                ),
              ),
              CustomSizedBox(
                height: 20.h,
              ),
              Consumer<DropdownProvider>(builder: (context, provider, child) {
                return CustomWidgetField(
                  obsecuretext: provider.passIsChecked,
                  texthint: "Password",
                  textlabel: "Enter Password",
                  icon: const Icon(
                    Icons.key_sharp,
                    color: AppColors.primaryColor,
                    size: 20,
                  ),
                  suffixIcon: IconButton(
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      provider.passToggleCheckbox();
                    },
                    icon: Icon(
                      provider.passIsChecked
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: AppColors.primaryColor,
                      size: 20,
                    ),
                  ),
                );
              }),
              CustomSizedBox(
                height: 20.h,
              ),
              const CustomWidgetField(
                texthint: "Change Your App url(Optional)",
                icon: Icon(
                  Icons.settings,
                  color: AppColors.primaryColor,
                  size: 20,
                ),
              ),
              Row(
                children: [
                  Consumer<DropdownProvider>(
                      builder: (context, provider, child) {
                    return IconButton(
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        provider.toggleCheckbox();
                      },
                      icon: Icon(
                        provider.isChecked
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank,
                        color: AppColors.primaryColor,
                        size: 30,
                      ),
                    );
                  }),
                  CustomSizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Remember Me",
                    style: AppStyles.appfont400Style,
                  )
                ],
              ),
              CustomSizedBox(
                height: 20,
              ),
              BottonWidget(
                  ontap: () {
                    Get.toNamed("/homeScreen");
                  },
                  height: 50,
                  width: double.infinity,
                  text: "Login")
            ]),
          )
        ],
      ),
    );
  }
}

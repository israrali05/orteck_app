import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/utils/app_styles.dart';
import 'package:orteck_app/widgets/custom_botton/custom_botton.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';
import 'package:orteck_app/widgets/drawar_widget/drawar_widget.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            shadowColor: AppColors.blackColor,
            title: const Text("Orteck"),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Container(
                color: AppColors
                    .secondaryColor, // Set the background color of the TabBar
                child: const TabBar(
                  indicatorWeight: 4,
                  dividerColor: AppColors.whiteColor,
                  labelStyle: TextStyle(fontSize: 18),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: AppColors.primaryColor,
                  labelColor: Colors.white,
                  unselectedLabelStyle: TextStyle(color: AppColors.whiteColor),
                  unselectedLabelColor: AppColors.whiteColor,
                  tabs: [
                    Tab(
                      text: 'Transactions',
                    ),
                    Tab(text: 'History'),
                  ],
                ),
              ),
            ),
          ),
          drawer: const Drawar_widget(),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You Must Click Start Visit",
                        style: AppStyles.appfont400Style.copyWith(
                            color: AppColors.secondaryColor,
                            letterSpacing: -0.9,
                            height: -0.9),
                      ),
                      CustomSizedBox(
                        height: 10,
                      ),
                      CustomBotton(
                        bgcolor: AppColors.secondaryColor,
                        height: 30,
                        ontap: () {
                          Get.toNamed("/TransactionScreen");
                        },
                        radiusValue: 20,
                        text: "START VISIT",
                        width: 120,
                        textStyle: AppStyles.appfont400Style.copyWith(
                          color: AppColors.whiteColor,
                          fontSize: 12,
                        ),
                      )
                    ]),
              ),
              const Center(
                child: Text('Tab 2 Content'),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/view/Start%20of%20Journey/components/all_customer.dart';
import 'package:orteck_app/widgets/drawar_widget/drawar_widget.dart';

class StartOfJourney extends StatelessWidget {
  const StartOfJourney({Key? key});

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
                      text: 'All Customer',
                    ),
                    Tab(text: 'Route Name'),
                  ],
                ),
              ),
            ),
          ),
          drawer: const Drawar_widget(),
          body: const TabBarView(
            children: [
              AllCustomerWidget(),
              Center(
                child: Text('Tab 2 Content'),
              ),
            ],
          ),
        ));
  }
}

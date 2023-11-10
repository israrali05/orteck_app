import 'package:flutter/material.dart';
import 'package:orteck_app/utils/app_colors.dart';
import 'package:orteck_app/view/Start%20of%20Journey/tranactions/components/history_tab_components.dart';
import 'package:orteck_app/view/Start%20of%20Journey/tranactions/components/transactions_tab_component.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
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
                    Tab(text: 'Tasks'),
                  ],
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              TransactionTabComponents(),
              HistoryTabComponent(),
              Center(
                child: Text('Tab 3 Content'),
              ),
            ],
          ),
        ));
  }
}

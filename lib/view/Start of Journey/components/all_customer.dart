import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orteck_app/model/start_of_journey_model/all_customer_model.dart';
import 'package:orteck_app/utils/app_images.dart';
import 'package:orteck_app/view/Start%20of%20Journey/components/textfield.dart';
import 'package:orteck_app/view/Start%20of%20Journey/components/transaction_history.dart';
import 'package:orteck_app/widgets/custom_sizedbox.dart/custom_sizedbox.dart';

class AllCustomerWidget extends StatelessWidget {
  const AllCustomerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.r, vertical: 20.r),
        child: Column(children: [
          const SearchTextFieldWidget(),
          CustomSizedBox(
            height: 10,
          ),
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: allCustomers.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(() => TransactionHistoryWidget());
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10.r),
                    padding:
                        EdgeInsets.symmetric(vertical: 15.r, horizontal: 5.r),
                    // height: 600,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3), // Background color
                      borderRadius: BorderRadius.circular(20), // Border radius
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        AppImages.allCustomerLocationlogo,
                        height: 40,
                      ), // Leading icon
                      title: Text(
                          allCustomers[index].title), // Title from the model
                      subtitle: Text(allCustomers[index]
                          .subtitle), // Subtitle from the model
                      trailing: Image.asset(
                        AppImages.allCustomerInfopng,
                        height: 20,
                      ), // Trailing icon
                    ),
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
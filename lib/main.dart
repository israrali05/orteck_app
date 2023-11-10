import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orteck_app/controller/login/login_controller.dart';
import 'package:orteck_app/controller/printer_controller/printer_controller.dart';
import 'package:orteck_app/view/Start%20of%20Journey/Scanning/scanning.dart';
import 'package:orteck_app/view/Start%20of%20Journey/Products/products.dart';
import 'package:orteck_app/view/Start%20of%20Journey/printer/printer.dart';
import 'package:orteck_app/view/Start%20of%20Journey/start_of_journey.dart';
import 'package:orteck_app/view/Start%20of%20Journey/tranactions/transactions.dart';
import 'package:orteck_app/view/home/home_screen.dart';
import 'package:orteck_app/view/login_screen/login_screen.dart';
import 'package:orteck_app/view/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => DropdownProvider()),
              ChangeNotifierProvider(create: (_) => PrinterControoler()),
            ],
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'ORTECK',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              initialRoute: '/',
              getPages: [
                GetPage(name: "/", page: () => SplashScreen()),
                GetPage(name: "/homeScreen", page: () => const HomeScreen()),
                GetPage(
                    name: "/start_of_journey",
                    page: () => const StartOfJourney()),
                GetPage(name: "/reports", page: () => const StartOfJourney()),
                GetPage(
                    name: "/start_of_journey",
                    page: () => const StartOfJourney()),
                GetPage(
                    name: "/TransactionScreen",
                    page: () => const TransactionScreen()),
                GetPage(
                    name: "/productScreen", page: () => const ProductScreen()),
                GetPage(
                    name: "/scanningScreen",
                    page: () => const ScanningScreen()),
                GetPage(
                    name: "/PrinterScreen", page: () => const PrinterScreen()),
              ],
              home: const LoginScreen(),
            ),
          );
        });
  }
}

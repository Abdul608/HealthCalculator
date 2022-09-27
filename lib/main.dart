import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_calculator/MyRoutes.dart';
import 'package:health_calculator/Pages/BMI_CalculationPage.dart';
import 'package:health_calculator/Pages/INR_CalculationPage.dart';
import 'package:health_calculator/Pages/Iron_CalculationPage.dart';
import 'package:health_calculator/Pages/LeanBody_CalculationPage.dart';
import 'package:health_calculator/Pages/Pregnancy_CalculationPage.dart';
import 'package:health_calculator/Pages/RMI_CalculationPage.dart';

import 'Pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return
          MaterialApp(
            initialRoute: MyRoutes.HomePage,
            routes: {
              // When navigating to the "/" route, build the FirstScreen widget.
              '/': (context) => const HomePage(),
              // When navigating to the "/second" route, build the SecondScreen widget.
              '/IronPage': (context) => IronCalculationPage(),
              '/RmiPage': (context) => RMI_CalculationPage(),
              '/PregnancyPage': (context) => PregnancyCalculationPAge(),
              '/BmiPage': (context) => BmiCalculationPage(),
              '/LeanBodyPage': (context) => LeanBodyCalculationPage(),
              '/InrPage': (context) => InrCalculationPage(),

            },
        );
      },
    );
  }
}

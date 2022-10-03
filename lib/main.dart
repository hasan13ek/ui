import 'dart:async';

import 'package:first_lesson/darsda/%D1%8B%D1%80%D0%B3.dart';
import 'package:first_lesson/darsda/flu8.dart';
import 'package:first_lesson/darsda/gridview.dart';
import 'package:first_lesson/darsda/my_cart.dart';
import 'package:first_lesson/darsda/stack_va_boshqalar.dart';
import 'package:first_lesson/home_flutter2/day_page2.dart';
import 'package:first_lesson/home_flutter2/day_page3.dart';
import 'package:first_lesson/home_flutter2/day_page4.dart';
import 'package:first_lesson/home_flutter2/day_page5.dart';
import 'package:first_lesson/home_flutter1/page10.dart';
import 'package:first_lesson/home_flutter1/page11.dart';
import 'package:first_lesson/home_flutter1/page2.dart';
import 'package:first_lesson/home_flutter1/page3.dart';
import 'package:first_lesson/home_flutter1/page4.dart';
import 'package:first_lesson/home_flutter1/page5.dart';
import 'package:first_lesson/home_flutter1/page6.dart';
import 'package:first_lesson/home_flutter1/page7.dart';
import 'package:first_lesson/home_flutter1/page8.dart';
import 'package:first_lesson/home_flutter3/call_ringing.dart';
import 'package:first_lesson/home_flutter3/edit_location.dart';
import 'package:first_lesson/home_flutter3/edit_payments.dart';
import 'package:first_lesson/home_flutter3/payment_method.dart';
import 'package:first_lesson/home_flutter3/payments.dart';
import 'package:first_lesson/home_flutter3/set_location.dart';
import 'package:first_lesson/home_flutter3/sign_upp_notification.dart';
import 'package:first_lesson/home_flutter3/upload_photo.dart';
import 'package:first_lesson/home_flutter3/upload_preveiw.dart';
import 'package:first_lesson/home_flutter4/onboarding.dart';
import 'package:first_lesson/home_flutter4/onboarding1.dart';
import 'package:first_lesson/home_flutter4/onboarding2.dart';
import 'package:first_lesson/home_flutter4/sign_in.dart';
import 'package:first_lesson/home_flutter4/sign_up.dart';
import 'package:first_lesson/home_flutter4/sign_up_process.dart';
import 'package:first_lesson/home_flutter5/home.dart';
import 'package:first_lesson/home_flutter5/view1.dart';
import 'package:first_lesson/home_flutter5/view2.dart';
import 'package:first_lesson/home_flutter6/daryo_uz.dart';
import 'package:first_lesson/home_flutter7/weather1.dart';
import 'package:first_lesson/home_flutter7/weather2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child){
        return MaterialApp(

            themeMode: ThemeMode.system,
            darkTheme: ThemeData.dark(),
            theme: ThemeData.light(),
          debugShowCheckedModeBanner: false,
          home: child);
      },
      child:Weather2(),
    );
  }
}




import 'package:first_lesson/darsda/%D1%8B%D1%80%D0%B3.dart';
import 'package:first_lesson/darsda/my_cart.dart';
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
import 'package:flutter/material.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: My_cart(),
    );
  }
}




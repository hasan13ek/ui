import 'dart:math';

import 'package:first_lesson/home_flutter10_amalyot_cofe/coffe_page_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Coffe extends StatefulWidget {
  const Coffe({Key? key}) : super(key: key);

  @override
  State<Coffe> createState() => _CoffeState();
}

class _CoffeState extends State<Coffe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 10,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://picsum.photos/id/1/200/300"),
                fit: BoxFit.fitHeight)),
        child: Column(
          children: [

            SizedBox(height: 190.h,),
            Container(
            margin: EdgeInsets.only(right: 50),
              width: 238.w,
              height: 291.h,
              child: Text(
                "Coffe\nMade\nEasy",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontSize: 66.sp),
              ),
            ),
            SizedBox(height: 200.h,),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Coffe2()));},
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22.r)),color: Colors.white),
                width: 322.w,
                height: 53.h,
                child: Center(
                  child: Text(
                    "Start here",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF74533D),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:first_lesson/home_flutter10_amalyot_cofe/coffe_page5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Coffe_page4 extends StatefulWidget {
  const Coffe_page4({Key? key}) : super(key: key);

  @override
  State<Coffe_page4> createState() => _Coffe_page4State();
}

class _Coffe_page4State extends State<Coffe_page4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 780,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/cobc.png"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home,
                          size: 36,
                          color: Colors.white,
                        )),
                    Container(
                      width: 236.w,
                      height: 53.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40).r,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF834323).withOpacity(0.5),
                            Color(0xFF6A432D)
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 30.r),
                              child: Text(
                                "Asokoro,Abuja",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24.sp),
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.expand_circle_down,
                                size: 34,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          size: 36,
                          color: Colors.white,
                        )),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
                SizedBox(
                  height: 34.h,
                ),
                Container(
                    margin: EdgeInsets.only(left: 45.r),
                    child: Text(
                      "Hello,  Ahlam",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp),
                    )),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                    margin: EdgeInsets.only(left: 45.r),
                    child: Text(
                      "What are you drinking today?",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp),
                    )),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 57.w,
                      height: 57.h,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: LinearGradient(colors: [
                            Color(0xFF6A432D),
                            Color(0xFF834323).withOpacity(0.2),
                          ])),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            size: 30,
                            color: Colors.white.withOpacity(0.9),
                          )),
                    ),
                    SizedBox(
                      width: 65.w,
                    ),
                    Container(
                      width: 57.w,
                      height: 57.h,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: LinearGradient(colors: [
                            Color(0xFF6A432D),
                            Color(0xFF834323).withOpacity(0.2),
                          ])),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.podcasts_rounded,
                            size: 30,
                            color: Colors.white.withOpacity(0.9),
                          )),
                    ),
                    SizedBox(
                      width: 64.w,
                    ),
                    Container(
                      width: 57.w,
                      height: 57.h,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: LinearGradient(colors: [
                            Color(0xFF6A432D),
                            Color(0xFF834323).withOpacity(0.2),
                          ])),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz_outlined,
                            size: 30,
                            color: Colors.white.withOpacity(0.9),
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 23.h,
                ),
                Center(
                  child: Container(
                    width: 295.w,
                    height: 2.5,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Fovourite",
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 36.r),
                        child: Text("Promotions",
                            style: TextStyle(
                                color: Colors.white, fontSize: 18.sp))),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text("More",
                        style: TextStyle(color: Colors.white, fontSize: 18.sp))
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Todays Promotion",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 24.sp),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ))
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(left: 24.r),
                    width: double.infinity,
                    height: 170,
                    child: ListView.builder(
                      itemBuilder: (BuildContext, int index) => lpg(context),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                    )),
                SizedBox(
                  height: 18.h,
                ),
                Container(
                    margin: EdgeInsets.only(left: 24.r),
                    width: double.infinity,
                    height: 170,
                    child: ListView.builder(
                      itemBuilder: (BuildContext, int index) => lpg(context),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                    )),
                SizedBox(
                  height: 24.h,
                ),
                Center(
                  child: Container(
                    width: 295.w,
                    height: 2.5,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(height: 11.h,),
                Container(
                  padding: EdgeInsets.only(left: 31,right: 31).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            size: 28,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.perm_identity_outlined,
                              size: 28, color: Colors.white))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget lpg(context) {
  return Container(
    margin: EdgeInsets.only(right: 10.r),
    width: 153.w,
    height: 163.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        gradient: LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            colors: [Color(0xFFFFFFFF), Color(0xFF333333).withOpacity(0.2)])),
    child: Column(
      children: [
        Text(
          "Capuchino",
          style: TextStyle(color: Color(0xFF834323), fontSize: 18.sp),
        ),
        Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 12.r).r,
            width: 159,
            height: 101,
            child: Image.asset(
              "assets/images/quya.png",
              fit: BoxFit.cover,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>Coffe_page5()));},
                child: Text(
                  "buy",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.2), fontSize: 20.sp),
                )),
            SizedBox(width: 20.w,),
            Text(
              "\$8",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 19.sp),
            )
          ],
        )
      ],
    ),
  );
}

import 'package:first_lesson/Quiz_app/dabdala.dart';
import 'package:first_lesson/Quiz_app/dabdalagaox/dab1.dart';
import 'package:first_lesson/Quiz_app/dabdalagaox/dab2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Quiz_app_page_2 extends StatefulWidget {
  const Quiz_app_page_2({Key? key}) : super(key: key);

  @override
  State<Quiz_app_page_2> createState() => _Quiz_app_page_2State();
}

class _Quiz_app_page_2State extends State<Quiz_app_page_2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 60).r,
            width: double.infinity,
            height: 790.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/qu.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                  width: 340,
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      color: Color(0xFF5D9BA4).withOpacity(0.5)),
                  child: TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>Dabdala()));},
                    child: Text("1 Sport",
                        style: TextStyle(
                            fontSize: 38.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.tealAccent.withOpacity(0.7))),
                  ),
                ),
                SizedBox(height: 20.h,),
                Container(
                  width: 340,
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      color: Color(0xFF5D9BA4).withOpacity(0.5)),
                  child: TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>Dabdala1()));},
                    child: Text("2 Davlat",
                        style: TextStyle(
                            fontSize: 38.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.tealAccent.withOpacity(0.7))),
                  ),
                ),
                SizedBox(height: 20.h,),
                Container(
                  width: 340,
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      color: Color(0xFF5D9BA4).withOpacity(0.5)),
                  child: TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>Dabdala2()));},
                    child: Text("3 Dasturlash",
                        style: TextStyle(
                            fontSize: 38.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.tealAccent.withOpacity(0.7))),
                  ),
                ),
                SizedBox(height: 20.h,),
                Container(
                  width: 340,
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      color: Color(0xFF5D9BA4).withOpacity(0.5)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("4 Islomiy",
                        style: TextStyle(
                            fontSize: 38.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.tealAccent.withOpacity(0.7))),
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

import 'package:first_lesson/home_flutter4/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  bool isDark = false;
  final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
    onPrimary: Colors.blue,
    elevation: 0,
    primary: Color(0xFF53E88B),
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 6,bottom: 7).r,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(14).r),
    ),
  );
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 30.h,),
            Container(padding: EdgeInsets.only(left: 30).r,child: isDark?Image.asset("assets/images/bu3.png"):Image.asset("assets/images/bu2.png"),width: 350.w,height: 400.h,),
            Container(child: Text("Food Ninja is Where Your\n      Comfort Food Lives",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 22.sp),),),
            SizedBox(height: 20.h,),
            Container(child: Text('Enjoy a fast and smooth food delivery at\n                      your doorstep',style: TextStyle(fontSize: 12),),),
            SizedBox(height: 42.h,),
            Container(
              child: ElevatedButton(
                style: raisedButtonStyle3,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_up()));
                },
                child: Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16.sp),),
              ),
              width: 157.w,
              height: 57.h,
            ),
          ],
        ),
      ),
    backgroundColor: isDark?Colors.black:Colors.white,);
  }
}

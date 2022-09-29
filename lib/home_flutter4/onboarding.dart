import 'package:first_lesson/home_flutter4/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  bool isDark = false;
  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(seconds: 4),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Onboarding1())));
  }
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/b3.png"),
            fit: BoxFit.fill
          )
        ),
        padding: EdgeInsets.all(50).r,
        child: Column(
          children: [
            SizedBox(height: 150.h),
            Center(child: Container(child: Image.asset("assets/images/ortada.png"),width: 175.w,height: 139.h,)),
            // SizedBox(height: ,),
            Container(child: Column(
              children: [
                Text("MasmasFood",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w700,color: Color(0xFF53E88B)),),
                Text("Deliever Favorite Food",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: isDark ? Colors.white : Colors.black,),)
              ],
            ),)
          ],
        ),
      ),
   backgroundColor: isDark?Colors.black:Colors.white, );
  }
}



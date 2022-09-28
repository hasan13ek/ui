import 'package:first_lesson/home_flutter4/sign_up_process.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
    onPrimary: Colors.greenAccent,
    elevation: 0,
    primary: Color(0xFFF4F4F4),
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 18,bottom: 18),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  );
  final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    elevation: 0,
    primary: Color(0xFF53E88B),
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 18,bottom: 18),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 28.h),
            Center(child: Container(child: Image.asset("assets/images/ortada.png"),width: 175.w,height: 139.h,)),
            Container(child: Column(
              children: [
                Text("MasmasFood",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w700,color: Color(0xFF53E88B)),),
                Text("Deliever Favorite Food",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
              ],
            ),),
            SizedBox(height: 20.h,),
            Container(child: Text("Login To Your Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),),
            SizedBox(height: 20.h,),
            Container(
              child: ElevatedButton(
                style: raisedButtonStyle3,
                onPressed: () {},
                child: Container(child: Container(padding: EdgeInsets.only(right: 250),child: Text("Email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xD5737373)),))),
              ),
              width: 325.w,
              height: 57.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Color(0xFF253B80).withOpacity(0.010),
                  blurRadius: 10.r
                  )
                ]
              ),
            ),
            SizedBox(height: 12.h,),
            Container(
              child: ElevatedButton(
                style: raisedButtonStyle3,
                onPressed: () {},
                child: Container(child: Container(padding: EdgeInsets.only(right: 226),child: Text("Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xD5737373)),))),
              ),
              width: 325.w,
              height: 57.h,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Color(0xFF253B80).withOpacity(0.010),
                        blurRadius: 10.r
                    )
                  ]
              ),
            ),
            SizedBox(height: 20.h,),
            Container(child: Text("Or Contineu With",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp),),),
            SizedBox(height: 20.h,),
            Container(
              padding: EdgeInsets.only(left: 30).r,
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(child: Row(
                        children: [
                          Container(padding: EdgeInsets.only(left: 22),child: Image.asset("assets/images/gogle.png",scale: 2,),),
                          SizedBox(width: 13,),
                          Container(child: Text("Facebook",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),)
                        ],
                      ),width: 152.w,height: 57.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color(0xFFF4F4F4)),),
                      SizedBox(width: 21.w,),
                      Container(child: Row(
                        children: [
                          Container(padding: EdgeInsets.only(left: 22),child: Image.asset("assets/images/go.png",scale: 2,),),
                          SizedBox(width: 13,),
                          Container(child: Text("Google",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),)
                        ],
                      ),width: 152.w,height: 57.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color(0xFFF4F4F4)),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(child: InkWell(onTap: (){},child: Text("Forgot Your Password?",style: TextStyle(color: Color(0xFF53E88B)),)),),
            SizedBox(height: 36.h,),
            Container(
              child: ElevatedButton(
                style: raisedButtonStyle2,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_up_process()));
                },
                child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16.sp),),
              ),
              width: 157.w,
              height: 57.h,
            ),
          ],
        ),
      ),
    );
  }
}

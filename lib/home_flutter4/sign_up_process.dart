import 'package:first_lesson/home_flutter4/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sign_up_process extends StatefulWidget {
  const Sign_up_process({Key? key}) : super(key: key);

  @override
  State<Sign_up_process> createState() => _Sign_up_processState();
}

class _Sign_up_processState extends State<Sign_up_process> {
  @override
  bool isDark =false;
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
      onPrimary: Colors.greenAccent,
      elevation: 0,
      primary: isDark?Colors.white10:Color(0xFFF4F4F4),
      minimumSize: const Size(0, 0),
      padding: const EdgeInsets.only(top: 18,bottom: 18),
      shape: const RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(const Radius.circular(15)),
      ),
    );
    final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      elevation: 0,
      primary: isDark?Color(0xFF15BE77):Color(0xFF53E88B),
      minimumSize: Size(0, 0),
      padding: EdgeInsets.only(top: 18,bottom: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 28.h),
            Center(child: Container(child: Image.asset("assets/images/ortada.png"),width: 175.w,height: 139.h,)),
            Container(child: Column(
              children: [
                const Text("MasmasFood",style: const TextStyle(fontSize: 35,fontWeight: FontWeight.w700,color: Color(0xFF53E88B)),),
                const Text("Deliever Favorite Food",style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
              ],
            ),),
            SizedBox(height: 20.h,),
            Container(child: const Text("Sign Up For Free",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),),
            SizedBox(height: 20.h,),
            Container(
              child: ElevatedButton(
                style: raisedButtonStyle3,
                onPressed: () {},
                child: Container(child: Row(
                  children: [
                    Container(width: 44.w,height: 44.h,child: Image.asset("assets/images/us.png",),),
                    SizedBox(width: 16.h,),
                    Container(padding: EdgeInsets.only(right: 120.r),child: const Text("Anamwp . . |",style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color:Color(0xD5737373)),)),
                  ],
                )),
              ),
              width: 325.w,
              height: 57.h,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: const Color(0xFF253B80).withOpacity(0.010),
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
                child: Container(child: Row(
                  children: [
                    Container(width: 44.w,height: 44.h,child: Image.asset("assets/images/sms.png",),),
                    SizedBox(width: 16.h,),
                    Container(padding: EdgeInsets.only(right: 120.r),child: const Text("Email",style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: const Color(0xD5737373)),)),
                  ],
                )),
              ),
              width: 325.w,
              height: 57.h,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: const Color(0xFF253B80).withOpacity(0.010),
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
                child: Container(child: Row(
                  children: [
                    Container(width: 44.w,height: 44.h,child: Image.asset("assets/images/pas.png",),),
                    SizedBox(width: 16.h,),
                    Container(padding: EdgeInsets.only(right: 120.r),child: const Text("Password",style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xD5737373)),)),
                    SizedBox(width: 60.w,),
                    Container(child: Image.asset("assets/images/koz.png"),),
                  ],
                )),
              ),
              width: 325.w,
              height: 57.h,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: const Color(0xFF253B80).withOpacity(0.010),
                        blurRadius: 10.r
                    )
                  ]
              ),
            ),
            SizedBox(height: 13.h,),
            Container(padding: EdgeInsets.only(left: 20).r,child: Row(
              children: [
                Container(padding: EdgeInsets.only(left: 12),child: Image.asset("assets/images/gogle.png",scale: 2,),),
                SizedBox(width: 13,),
                Container(child: Text("Keep Me signed",style: TextStyle(color: isDark?Colors.grey:Colors.white),),)
              ],
            ),width: 392.w,height: 17.h),
            SizedBox(height: 14.h,),
            Container(padding: EdgeInsets.only(left: 20).r,child: Row(
              children: [
                Container(padding: EdgeInsets.only(left: 12),child: Image.asset("assets/images/go.png",scale: 2,),),
                SizedBox(width: 13,),
                Container(child: Text("Email Me About Special Pricing",style: TextStyle(color: isDark?Colors.grey:Colors.white)),)
              ],
            ),width: 392.w,height: 17.h),
            SizedBox(height: 20.h,),
            Container(
              child: ElevatedButton(
                style: raisedButtonStyle2,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_in()));
                },
                child: Text("Create Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16.sp),),
              ),
              width: 175.w,
              height: 57.h,
            ),
            SizedBox(height: 20.h,),
            Container(child: InkWell(onTap: (){},child: Text("already have an account?",style: TextStyle(color: Color(0xFF53E88B)),)),),
          ],
        ),
      ),
    backgroundColor: isDark?Colors.black:Colors.white,);
  }
}

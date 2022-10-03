import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Weather2 extends StatefulWidget {
  const Weather2({Key? key}) : super(key: key);

  @override
  State<Weather2> createState() => _Weather2State();
}

class _Weather2State extends State<Weather2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.r),
            width: double.infinity.w,
            height: 950.h,
            decoration: BoxDecoration(color:Color(0xFFFEB054).withOpacity(0.5)),
            child: Column(
              children: [
                Container(child: Row(children: [Container(child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_outlined)),),SizedBox(width: 74.w,),Container(child: Text("Next 7 Days",style: TextStyle(fontSize: 22.sp),),)],),),
                SizedBox(height: 30.h,),
                Container(padding: EdgeInsets.all(12.r),width: 314.w,height: 220.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22.r)),gradient: LinearGradient(colors: [Color(0xFFFF7E36).withOpacity(0.40),Color(0xFFFEA14E).withOpacity(0.5),Color(0xFFFEB054).withOpacity(0.4)])),
                child: Column(children: [
                  Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Container(margin: EdgeInsets.only(left: 10),child: Text("Tomorrow",style: TextStyle(fontSize: 14),),),Container(margin: EdgeInsets.only(left: 110.r),child: Image.asset("assets/images/on.png"),),Container(child: Image.asset("assets/images/o.png"),)],),),
                  SizedBox(height: 30.h,),
                  Container(child: Row(children: [Padding(padding: EdgeInsets.only(left: 50.r)),
                    Container(margin: EdgeInsets.only(left: 0),child: Image.asset("assets/images/soyabon.png"),width: 44.w,height: 44.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),color: Colors.white),),
                    Container(margin: EdgeInsets.only(left: 36),child: Image.asset("assets/images/kofesifat.png"),width: 44.w,height: 44.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),color: Colors.white)),
                    Container(margin: EdgeInsets.only(left: 36),child: Image.asset("assets/images/tomchi.png"),width: 44.w,height: 44.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),color: Colors.white))
                  ],
    ),),
                  SizedBox(height: 10.h,),
                  Container(child: Row(children: [Container(margin: EdgeInsets.only(left: 50.r),child: Text("1cm"),),Container(margin: EdgeInsets.only(left: 60.r),child: Text("15km/h"),),Container(margin: EdgeInsets.only(left: 44.r),child: Text("50 %"),)],),)
                ],),
                ),
                SizedBox(height: 20.h,),
                Container(child: Column(children: [
                  Container(width: 310.w,height:90.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22.r)),color: Color(0xFFFEB054).withOpacity(0.5)),child: Row(children: [Container(margin: EdgeInsets.only(left: 20.r),child: Text("Thursday"),),SizedBox(width: 126.w,),Container(child: Image.asset("assets/images/on.png"),),Container(child: Image.asset("assets/images/o.png"),)],),),
                  Container(margin: EdgeInsets.only(top: 8.r),width: 310.w,height:90.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22.r)),color: Color(0xFFFEB054).withOpacity(0.5)),child: Row(children: [Container(margin: EdgeInsets.only(left: 20.r),child: Text("Friday"),),SizedBox(width: 148.w,),Container(child: Image.asset("assets/images/on.png"),),Container(child: Image.asset("assets/images/o.png"),)],),),
                  Container(margin: EdgeInsets.only(top: 8.r),width: 310.w,height:90.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22.r)),color: Color(0xFFFEB054).withOpacity(0.5)),child: Row(children: [Container(margin: EdgeInsets.only(left: 20.r),child: Text("Saturday"),),SizedBox(width: 132.w,),Container(child: Image.asset("assets/images/on.png"),),Container(child: Image.asset("assets/images/o.png"),)],),),
                  Container(margin: EdgeInsets.only(top: 8.r),width: 310.w,height:90.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22.r)),color: Color(0xFFFEB054).withOpacity(0.5)),child: Row(children: [Container(margin: EdgeInsets.only(left: 20.r),child: Text("Sundayday"),),SizedBox(width: 120.w,),Container(child: Image.asset("assets/images/on.png"),),Container(child: Image.asset("assets/images/o.png"),)],),),
                  Container(margin: EdgeInsets.only(top: 8.r),width: 310.w,height:90.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22.r)),color: Color(0xFFFEB054).withOpacity(0.5)),child: Row(children: [Container(margin: EdgeInsets.only(left: 20.r),child: Text("Munuday"),),SizedBox(width: 126.w,),Container(child: Image.asset("assets/images/on.png"),),Container(child: Image.asset("assets/images/o.png"),)],),),
                  Container(margin: EdgeInsets.only(top: 8.r),width: 310.w,height:90.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22.r)),color: Color(0xFFFEB054).withOpacity(0.5)),child: Row(children: [Container(margin: EdgeInsets.only(left: 20.r),child: Text("Thuesday"),),SizedBox(width: 126.w,),Container(child: Image.asset("assets/images/on.png"),),Container(child: Image.asset("assets/images/o.png"),)],),),


                ],),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Color(0xFFFF7E36).withOpacity(0.40),Color(0xFFFEA14E).withOpacity(0.5),Color(0xFFFEB054).withOpacity(0.4)

// color: Color(0xFFFEB054).withOpacity(0.4)  tepaga qoyiladi
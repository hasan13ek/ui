import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xFFFEB054).withOpacity(0.3),Color(0xFFFEA14E).withOpacity(0.05),Color(0xFFFF7E36).withOpacity(0.65)],begin:Alignment.topLeft, end: Alignment.bottomRight ),
              ),
              width: double.infinity,
              height: 854.h,padding: EdgeInsets.all(22.r),
              child: Column(
                children: [
                  Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Container(child: IconButton(onPressed: (){}, icon: Icon(Icons.search)),),Container(child: Image.asset("assets/images/dr.png",scale: 1.2,),)],),),
                  Container(padding: EdgeInsets.only(right: 180.r),child: Column(
                    children: [
                      Text("Stockholm,\nSweden",style: TextStyle(fontSize: 32.sp,fontWeight: FontWeight.w400),),
                      SizedBox(height: 6.h,),
                      Container(padding: EdgeInsets.only(right: 52),child: Text("Tue, Jun 30",style: TextStyle(color: Colors.grey),))
                    ],
                  )),
                  Container(child: Row(children: [Container(child: Image.asset("assets/images/bulut1.png"),),SizedBox(width: 60.w,),Container(child: Image.asset("assets/images/gradus.png",scale: 0.6,),)],),),
                  Container(width: 310.w,height: 72,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Color(0xFFFEB054).withOpacity(0.2)),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Container(margin: EdgeInsets.only(left: 16),child: Image.asset("assets/images/soyabon.png"),width: 44.w,height: 44.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),color: Colors.white),),Container(padding: EdgeInsets.only(right: 140.r),child: Text("Rain Fall")),Container(padding: EdgeInsets.only(right: 20.r),child: Text("3cm"))],),
                  ),
                  SizedBox(height: 8.h,),
                  Container(width: 310.w,height: 72,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Color(0xFFFEB054).withOpacity(0.2)),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Container(margin: EdgeInsets.only(left: 16),child: Image.asset("assets/images/kofesifat.png"),width: 44.w,height: 44.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),color: Colors.white),),Container(padding: EdgeInsets.only(right: 140.r),child: Text("Wind")),Container(padding: EdgeInsets.only(right: 20.r),child: Text("19km/h"))],),
                  ),
                  SizedBox(height: 8.h,),
                  Container(width: 310.w,height: 72,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color: Color(0xFFFEB054).withOpacity(0.2)),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Container(margin: EdgeInsets.only(left: 16),child: Image.asset("assets/images/tomchi.png"),width: 44.w,height: 44.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),color: Colors.white),),Container(padding: EdgeInsets.only(right: 140.r),child: Text("Humidity")),Container(padding: EdgeInsets.only(right: 20.r),child: Text("64 %"))],),
                  ),
                  SizedBox(height: 20.h,),
                  Container(width: 310.w,height: 64.h,
                  child: Column(
                    children: [
                      Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Container(child: Text("Today",style: TextStyle(fontWeight: FontWeight.w700,),),),Container(child: Text("Tomorrow",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFFFEB054).withOpacity(0.5)),),),Container(child: Text("Next 7 Days >",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFFFEB054).withOpacity(0.5)),),)],),),
                      SizedBox(height: 28.h,),
                      Stack(children:[Container(width: 310,height: 2,color: Color(0xFFFEB059).withOpacity(0.2),child: Row(children: [Container(margin: EdgeInsets.only(left: 12.r),width: 18.w,height: 18.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.r)),color: Colors.black),)],),)])
                    ],
                  ),
                  ),
                  SizedBox(height: 12.h,),
                  Container(width: double.infinity,height: 130.h,child: ListView(scrollDirection: Axis.horizontal,shrinkWrap: true,children: [b1(),SizedBox(width: 10.w,),b2(),SizedBox(width: 10.w,),b3(),SizedBox(width: 10.w,),b4(),SizedBox(width: 10.w,),b5(),SizedBox(width: 10.w,),b6(),SizedBox(width: 10.w,),b7()],),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Widget b1 (){
  return Container(child: Column(children: [Container(padding: EdgeInsets.only(top: 5.r),child: Text("now"),),Container(child: Image.asset("assets/images/o.png"),),Container(child: Image.asset("assets/images/on.png"),)],),width: 68.w,height: 130.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30.r)),color: Color(0xFFFEB054).withOpacity(0.2)),);
}
Widget b2 (){
  return Container(child: Column(children: [Container(padding: EdgeInsets.only(top: 5.r),child: Text("now"),),Container(child: Image.asset("assets/images/o.png"),),Container(child: Image.asset("assets/images/on.png"),)],),width: 68.w,height: 130.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30.r)),color: Color(0xFFFEB054).withOpacity(0.2)),);
}
Widget b3 (){
  return Container(child: Column(children: [Container(padding: EdgeInsets.only(top: 5.r),child: Text("now"),),Container(child: Image.asset("assets/images/o.png"),),Container(child: Image.asset("assets/images/on.png"),)],),width: 68.w,height: 130.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30.r)),color: Color(0xFFFEB054).withOpacity(0.2)),);
}
Widget b4 (){
  return Container(child: Column(children: [Container(padding: EdgeInsets.only(top: 5.r),child: Text("now"),),Container(child: Image.asset("assets/images/o.png"),),Container(child: Image.asset("assets/images/on.png"),)],),width: 68.w,height: 130.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30.r)),color: Color(0xFFFEB054).withOpacity(0.2)),);
}
Widget b5 (){
  return Container(child: Column(children: [Container(padding: EdgeInsets.only(top: 5.r),child: Text("now"),),Container(child: Image.asset("assets/images/o.png"),),Container(child: Image.asset("assets/images/on.png"),)],),width: 68.w,height: 130.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30.r)),color: Color(0xFFFEB054).withOpacity(0.2)),);
}
Widget b6 (){
  return Container(child: Column(children: [Container(padding: EdgeInsets.only(top: 5.r),child: Text("now"),),Container(child: Image.asset("assets/images/o.png"),),Container(child: Image.asset("assets/images/on.png"),)],),width: 68.w,height: 130.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30.r)),color: Color(0xFFFEB054).withOpacity(0.2)),);
}
Widget b7 (){
  return Container(child: Column(children: [Container(padding: EdgeInsets.only(top: 5.r),child: Text("now"),),Container(child: Image.asset("assets/images/o.png"),),Container(child: Image.asset("assets/images/on.png"),)],),width: 68.w,height: 130.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30.r)),color: Color(0xFFFEB054).withOpacity(0.2)),);
}
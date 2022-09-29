import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class View2 extends StatefulWidget {
  const View2({Key? key}) : super(key: key);

  @override
  State<View2> createState() => _View2State();
}
bool hp =false;
class _View2State extends State<View2> {
  @override
  Widget build(BuildContext context) {
    hp = Theme.of(context).brightness ==Brightness.dark;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 24,right: 24),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 50.h,),
              Container(width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/burger.png"),fit: BoxFit.cover
                    )
                ),
                padding: EdgeInsets.only(left: 0).r,
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(height: 160.h,),
                      Container(child: Text("Find Your\nFavorite Food",style: TextStyle(fontSize: 31.sp,fontWeight: FontWeight.w800),),),
                      SizedBox(width: 87,),
                      Container(width: 45,height: 45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15).r),color: hp?Colors.grey[800]:Colors.white),
                        child: Image.asset("assets/images/noitfication.png",scale:1.5,),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.only(),
                child: Row(
                  children: [
                    Container(
                      width: 267.w,
                      height: 50.h,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15).r,color: hp?Colors.grey[800]:Color(0xFFF9A84D).withOpacity(0.3)),
                      child: Row(
                        children: [
                          Container(child: IconButton(onPressed: null, icon:Icon(Icons.search,color: hp?Colors.white:Color(0xFFF9A84D),),padding:EdgeInsets.only(right: 0),),),
                          Expanded(
                            child: Container(child: TextField(
                              decoration: InputDecoration(hintText: "What do you want to order?",hintStyle: TextStyle(color:hp?Colors.grey:Color(0xFFDA6317)),border: InputBorder.none),
                            ),),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(child: hp?Image.asset("assets/images/settings1.png",scale: 2,):Image.asset("assets/images/settings.png",scale: 2,),width: 49.w,height: 50.h,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15).r,color: hp?Colors.grey[800]:Color(0xFFF9A84D).withOpacity(0.3),))
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              yana(),
              SizedBox(height: 20.h,),
              yana1(),
              SizedBox(height: 20.h,),
              yana2(),
              SizedBox(height: 20.h,),
              yana3(),
              SizedBox(height: 20.h,),
              yana4(),
              SizedBox(height: 20.h,),
              yana5(),

            ],
          ),
        ),
      ),
    backgroundColor: hp?Colors.black:Colors.white,);
  }
}

Widget yana(){
  return Container(
    padding: EdgeInsets.only(left: 24,right: 24),
    width: 323.w,
    height: 87.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Row(
      children: [
        Container(child: Image.asset("assets/images/tort.png"),width: 64.w,height: 64.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.sp)),),
        SizedBox(width: 21.w,),
        Container(child: Column(
          children: [
            SizedBox(height: 25.h,),
            Text("Herbal Pancake",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            Text("Warung Herbal",style: TextStyle(fontSize: 14.sp,color: Colors.grey),)
          ],
        ),),
        SizedBox(width: 38.w,),
        Container(child: Text("\$7",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w700,color: Color(0xFFFEAD1D)),),)
      ],
    ),
  );
}
Widget yana1(){
  return Container(
    padding: EdgeInsets.only(left: 24,right: 24),
    width: 323.w,
    height: 87.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Row(
      children: [
        Container(child: Image.asset("assets/images/boshqa.png"),width: 64.w,height: 64.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.sp)),),
        SizedBox(width: 21.w,),
        Container(child: Column(
          children: [
            SizedBox(height: 25.h,),
            Text("Fruit Salad",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            Text("Wijie Resto",style: TextStyle(fontSize: 14.sp,color: Colors.grey),)
          ],
        ),),
        SizedBox(width: 75.w,),
        Container(child: Text("\$5",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w700,color: Color(0xFFFEAD1D)),),)
      ],
    ),
  );
}
Widget yana2(){
  return Container(
    padding: EdgeInsets.only(left: 24,right: 24),
    width: 323.w,
    height: 87.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Row(
      children: [
        Container(child: Image.asset("assets/images/oshroq.png"),width: 64.w,height: 64.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.sp)),),
        SizedBox(width: 21.w,),
        Container(child: Column(
          children: [
            SizedBox(height: 25.h,),
            Text("Green Noddle",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            Text("Noodle Home",style: TextStyle(fontSize: 14.sp,color: Colors.grey),)
          ],
        ),),
        SizedBox(width: 38.w,),
        Container(child: Text("\$15",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w700,color: Color(0xFFFEAD1D)),),)
      ],
    ),
  );
}


Widget yana3(){
  return Container(
    padding: EdgeInsets.only(left: 24,right: 24),
    width: 323.w,
    height: 87.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Row(
      children: [
        Container(child: hp?Image.asset("assets/images/opa1.png"):Image.asset("assets/images/opa.png"),width: 64.w,height: 64.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.sp)),),
        SizedBox(width: 21.w,),
        Container(child: Column(
          children: [
            SizedBox(height: 25.h,),
            Text("Herbal Pancake",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            Text("Warung Herbal",style: TextStyle(fontSize: 14.sp,color: Colors.grey),)
          ],
        ),),
        SizedBox(width: 38.w,),
        Container(child: Text("\$7",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w700,color: Color(0xFFFEAD1D)),),)
      ],
    ),
  );
}
Widget yana4(){
  return Container(
    padding: EdgeInsets.only(left: 24,right: 24),
    width: 323.w,
    height: 87.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Row(
      children: [
        Container(child: Image.asset("assets/images/ospaz.png"),width: 64.w,height: 64.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.sp)),),
        SizedBox(width: 21.w,),
        Container(child: Column(
          children: [
            SizedBox(height: 25.h,),
            Text("Fruit Salad",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            Text("Wijie Resto",style: TextStyle(fontSize: 14.sp,color: Colors.grey),)
          ],
        ),),
        SizedBox(width: 75.w,),
        Container(child: Text("\$5",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w700,color: Color(0xFFFEAD1D)),),)
      ],
    ),
  );
}
Widget yana5(){
  return Container(
    padding: EdgeInsets.only(left: 24,right: 24),
    width: 323.w,
    height: 87.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Row(
      children: [
        Container(child: Image.asset("assets/images/kob.png"),width: 64.w,height: 64.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.sp)),),
        SizedBox(width: 21.w,),
        Container(child: Column(
          children: [
            SizedBox(height: 25.h,),
            Text("Green Noddle",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            Text("Noodle Home",style: TextStyle(fontSize: 14.sp,color: Colors.grey),)
          ],
        ),),
        SizedBox(width: 38.w,),
        Container(child: Text("\$15",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w700,color: Color(0xFFFEAD1D)),),)
      ],
    ),
  );
}
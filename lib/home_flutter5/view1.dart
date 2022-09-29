import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class View1 extends StatefulWidget {
  const View1({Key? key}) : super(key: key);

  @override
  State<View1> createState() => _View1State();
}
bool hp = false;
class _View1State extends State<View1> {
  @override
  Widget build(BuildContext context) {
    hp = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(right: 24,left: 24),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 50.h,),
              Container(width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/burger.png"),
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
              Container(
                height: 184,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(height: 50.h,),
                    shular(),
                    SizedBox(height: 20.h,),
                    shular1(),
                    SizedBox(height: 20.h,),
                    shular2(),
                    SizedBox(height: 20.h,),
                    shular3(),
                    SizedBox(height: 20.h,),
                    shular4(),
                    SizedBox(height: 20.h,),
                    shular5(),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 184,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(height: 50.h,),
                    shular(),
                    SizedBox(height: 20.h,),
                    shular1(),
                    SizedBox(height: 20.h,),
                    shular2(),
                    SizedBox(height: 20.h,),
                    shular3(),
                    SizedBox(height: 20.h,),
                    shular4(),
                    SizedBox(height: 20.h,),
                    shular5(),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 184,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(height: 50.h,),
                    shular(),
                    SizedBox(height: 20.h,),
                    shular1(),
                    SizedBox(height: 20.h,),
                    shular2(),
                    SizedBox(height: 20.h,),
                    shular3(),
                    SizedBox(height: 20.h,),
                    shular4(),
                    SizedBox(height: 20.h,),
                    shular5(),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 184,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(height: 50.h,),
                    shular(),
                    SizedBox(height: 20.h,),
                    shular1(),
                    SizedBox(height: 20.h,),
                    shular2(),
                    SizedBox(height: 20.h,),
                    shular3(),
                    SizedBox(height: 20.h,),
                    shular4(),
                    SizedBox(height: 20.h,),
                    shular5(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    backgroundColor: hp?Colors.black:Colors.grey[200],);
  }
}
Widget shular(){
  return Container(
    margin: EdgeInsets.only(right: 8),
    width: 147,
    height: 184,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Container(
      child: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 26.r),width:96.w,height: 73.h,child: hp?Image.asset("assets/images/viga1.png"):Image.asset("assets/images/viga.png"),),
          SizedBox(height: 17.h,),
          Container(child: Column(
            children: [
              Text("Vegan Resto",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
              SizedBox(height: 4.h,),
              Text("12 Mins",style: TextStyle(color: Colors.grey),)
            ],
          ),)
        ],
      ),
    ),
  );
}
Widget shular1(){
  return Container(
    margin: EdgeInsets.only(right: 8),
    width: 147,
    height: 184,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Container(
      child: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 8.r),width:98.w,height: 90.h,child: hp?Image.asset("assets/images/kim.png"):Image.asset("assets/images/healthy.png"),),
          SizedBox(height: 17.h,),
          Container(child: Column(
            children: [
              Text("Healthy Food",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
              SizedBox(height: 4.h,),
              Text("8 Mins",style: TextStyle(color: Colors.grey),)
            ],
          ),)
        ],
      ),
    ),
  );
}
Widget shular2(){
  return Container(
    margin: EdgeInsets.only(right: 8),
    width: 147,
    height: 184,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Container(
      child: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 18.r),width:86.w,height: 88.h,child: hp?Image.asset("assets/images/good1.png"):Image.asset("assets/images/good.png"),),
          SizedBox(height: 17.h,),
          Container(child: Column(
            children: [
              Text("Good Food",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
              SizedBox(height: 4.h,),
              Text("12 Mins",style: TextStyle(color: Colors.grey),)
            ],
          ),)
        ],
      ),
    ),
  );
}


Widget shular3(){
  return Container(
    margin: EdgeInsets.only(right: 8),
    width: 147,
    height: 184,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Container(
      child: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 26.r),width:96.w,height: 73.h,child: Image.asset("assets/images/kob.png"),),
          SizedBox(height: 17.h,),
          Container(child: Column(
            children: [
              Text("Smart Resto",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
              SizedBox(height: 4.h,),
              Text("8 Mins",style: TextStyle(color: Colors.grey),)
            ],
          ),)
        ],
      ),
    ),
  );
}
Widget shular4(){
  return Container(
    margin: EdgeInsets.only(right: 8),
    width: 147,
    height: 184,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Container(
      child: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 8.r),width:98.w,height: 90.h,child: Image.asset("assets/images/ospaz.png"),),
          SizedBox(height: 17.h,),
          Container(child: Column(
            children: [
              Text("Healthy Food",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
              SizedBox(height: 4.h,),
              Text("8 Mins",style: TextStyle(color: Colors.grey),)
            ],
          ),)
        ],
      ),
    ),
  );
}
Widget shular5(){
  return Container(
    margin: EdgeInsets.only(right: 8),
    width: 147,
    height: 184,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: hp?Colors.grey[800]:Colors.white),
    child: Container(
      child: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 18.r),width:86.w,height: 88.h,child: hp?Image.asset("assets/images/opa1.png"):Image.asset("assets/images/opa.png"),),
          SizedBox(height: 17.h,),
          Container(child: Column(
            children: [
              Text("Good Food",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
              SizedBox(height: 4.h,),
              Text("12 Mins",style: TextStyle(color: Colors.grey),)
            ],
          ),)
        ],
      ),
    ),
  );
}
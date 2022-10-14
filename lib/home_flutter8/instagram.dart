import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_flutter5/home.dart';
bool isLiked =false;
class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}
int ran = 0;
class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 10,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 8.h,),
                Container(child: Row(children: [Container(margin: EdgeInsets.only(left: 15.r),child: Image.asset("assets/images/logo.png",scale: 2,),),SizedBox(width: 130.w,),InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>Home()));},child: Container(child: Image.asset("assets/images/story.png",scale: 2,),)),SizedBox(width: 20.w,),Container(child: Image.asset("assets/images/like.png",scale: 2,),),SizedBox(width: 20.w,),Container(child: Image.asset("assets/images/message.png",scale: 2,),)],),),
                Container(width: double.infinity,height: 120.h,
                color: Colors.white,
                  child: Stack(
                    children:[
                      ListView.builder(
                      itemBuilder: (context,index){
                        return Story();
                      },
                        itemCount: 13,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                    ),

                  ]),
                ),
                Column(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 900,
                        child: ListView.builder(itemBuilder: (context,index)=>Post(context),itemCount: 5,shrinkWrap: true,scrollDirection: Axis.vertical,)),
                  ],
                )
                // Post()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Story(){
  return Container(
    child: Container(
      // width: 68.w,
      height: 94.h,
      child: Column(
        children: [
          SizedBox(height: 10.h,),
          Column(
            children: [
              Container(
                child: Center(child: Stack(children: [Container( margin: EdgeInsets.only(left: 8.r,right: 8.r),width: 80.w,height: 87.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100.r)),gradient: LinearGradient(colors: [Color(0xFFDE0046),Color(0xFFF7A34B)]),),),
                  InkWell(onTap: (){},child: Center(child: Container(margin: EdgeInsets.only(left: 12.6.r,right: 0.r,top: 3.6.r),width: 72.w,height: 80.h, decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100.r)),image: DecorationImage(image: NetworkImage("https://picsum.photos/${ran}${ran++}"),fit: BoxFit.cover),),)))
                ],)),),
              SizedBox(height: 4.h,),
              Text("hasan")
            ],
          ),
        ],
      ),
    ),
  );
}
Widget Post( BuildContext context){
  return  Container(width: double.infinity,height: 566.h,color: Colors.grey,
    child: Column(
      children: [
        Container(width: double.infinity,height: 50,color: Colors.white,child: Row(
          children: [
            Container(margin: EdgeInsets.only(left: 6.r),width: 30.w,height: 30.h,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100.r)),image: DecorationImage(image: NetworkImage("https://picsum.photos/${ran}${ran++}"),fit: BoxFit.cover),),),
            SizedBox(width: 10.w,),
            Text("Hasan"),
            SizedBox(width: 259.w,),
            Image.asset("assets/images/do.png",scale: 2,),
          ],
        ),),
        Container(
          width: double.infinity,
          height: 316,
          color: Colors.greenAccent,
          child: ListView.builder(itemBuilder: (context,index)=>blat(),itemCount: 4,shrinkWrap: true,scrollDirection: Axis.horizontal,),
        ),
        Container(width: double.infinity,height: 140.h,color: Colors.white,
        child:  Column(
          children: [
            SizedBox(height: 2.h,),
            Container(margin: EdgeInsets.only(left: 2.r),child: Row(children: [Container(child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,size: 30,)),),InkWell(onTap: (){},child: Container(child: Image.asset("assets/images/kom.png",scale: 1.6,),)),SizedBox(width: 14.w,),Container(child: Image.asset("assets/images/otpra.png",scale: 1.6,),),SizedBox(width: 33.w,),Container(child: Image.asset("assets/images/uch.png",scale: 2,),),SizedBox(width: 120.w,),Container(child: Image.asset("assets/images/sax.png",scale: 1.6,),)],),),
            Container(margin: EdgeInsets.only(right: 310.r),child: Text("100 likes",style: TextStyle(fontWeight: FontWeight.w800),),),
            SizedBox(height: 10.h,),
            Container(margin: EdgeInsets.only(right: 130.r),child: Text("Zufar:   Zur ajoyib chotke chiqibdi!"),),
            SizedBox(height: 6.h,),
            Container(margin: EdgeInsets.only(right: 230.r),child: InkWell(onTap: (){},child: Text("Show All Comments",style: TextStyle(fontWeight: FontWeight.w700),),),)
          ],
        ),
        )
      ],
    ),
  );
}
Widget blat(){
  return Container(
    width: 380,
    height: 60,
    decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://picsum.photos/200"),fit: BoxFit.cover)),
  );
}

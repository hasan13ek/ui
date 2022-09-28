import 'package:first_lesson/home_flutter5/view1.dart';
import 'package:first_lesson/home_flutter5/view2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
  onPrimary: Colors.green,
  elevation: 0,
  primary: Color(0xFFFFFFFF),
  minimumSize: Size(0, 0),
  padding: EdgeInsets.only(top: 18,bottom: 18),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Container(
          // padding: EdgeInsets.only(left: 25,right: 25),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/burger.png"),
                    )
                ),
                padding: EdgeInsets.only(left: 25).r,
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(height: 160.h,),
                      Container(child: Text("Find Your\nFavorite Food",style: TextStyle(fontSize: 31.sp,fontWeight: FontWeight.w800),),),
                      SizedBox(width: 87,),
                      Container(width: 45,height: 45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15).r),color: Colors.white),
                        child: Image.asset("assets/images/noitfication.png",scale:1.5,),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 24,right: 24),
                child: Row(
                  children: [
                    Container(
                      width: 267.w,
                      height: 50.h,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15).r,color: Color(0xFFF9A84D).withOpacity(0.3)),
                      child: Row(
                        children: [
                          Container(child: IconButton(onPressed: null, icon:Icon(Icons.search,color: Color(0xFFF9A84D),),padding:EdgeInsets.only(right: 0),),),
                          Expanded(
                            child: Container(child: TextField(
                              decoration: InputDecoration(hintText: "What do you want to order?",hintStyle: TextStyle(color:Color(0xFFDA6317)),border: InputBorder.none),
                            ),),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(child: Image.asset("assets/images/settings.png",scale: 2,),width: 49.w,height: 50.h,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15).r,color: Color(0xFFF9A84D).withOpacity(0.3),))
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                width: 325.w,
                height: 150.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    gradient: LinearGradient(colors: [Color(0xFF53E88B),Color(0xFF15BE77)]),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/Pattern.png")
                    )
                ),
                child: Stack(
                  children: [
                      Image(image: AssetImage("assets/images/ice.png")),
                    Positioned(child: Text("Special Deal For\nOctober",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.sp,color: Colors.white),),
                    right: 25,
                      top: 30,
                    ),
                    Positioned(
                        bottom: 10,
                        right: 70,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {},
                          child: Text(
                            "Buy Now",
                            style:
                            TextStyle(color: Color(0xFF53E88B)),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 25.h,),
              Container(padding: EdgeInsets.only(left: 25,right: 25),child: Row(children: [
                Container(child: Text("Nearest Restaurant",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w700),),),
                SizedBox(width: 117.w,),
                Container(child:InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>View1()));
                },child: Text("View More",style: TextStyle(color: Color(0xFFFF7C32)),)),),
              ],),),
              SizedBox(height: 20.h,),
              Container(
                padding: EdgeInsets.only(right: 25,left: 20),
                height: 184,
                  child: Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        shular(),
                        shular1(),
                        shular2()
                      ],
                    ),
                  )
              ),
              SizedBox(height: 20.h,),
              Container(padding: EdgeInsets.only(left: 25,right: 25),child: Row(children: [
                Container(child: Text("Popular Menu",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w700),),),
                SizedBox(width: 153.w,),
                Container(child:InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>View2()));
                },child: Text("View More",style: TextStyle(color: Color(0xFFFF7C32)),)),),
              ],),),
              SizedBox(height: 20.h,),
              yana(),
              SizedBox(height: 20.h,),
              yana1(),
              SizedBox(height: 20.h,),
              yana2()
            ],
          ),
        )

      ),
    backgroundColor: Colors.grey[200],);
  }
}
Widget shular(){
  return Container(
    margin: EdgeInsets.only(right: 8),
    width: 147,
    height: 184,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: Colors.white),
    child: Container(
      child: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 26.r),width:96.w,height: 73.h,child: Image.asset("assets/images/viga.png"),),
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
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: Colors.white),
    child: Container(
      child: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 8.r),width:98.w,height: 90.h,child: Image.asset("assets/images/healthy.png"),),
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
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: Colors.white),
    child: Container(
      child: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 18.r),width:86.w,height: 88.h,child: Image.asset("assets/images/good.png"),),
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
Widget yana(){
  return Container(
    padding: EdgeInsets.only(left: 24,right: 24),
    width: 323.w,
    height: 87.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: Colors.white),
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
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: Colors.white),
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
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r),color: Colors.white),
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

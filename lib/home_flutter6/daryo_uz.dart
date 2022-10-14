import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Daryo_Uz extends StatefulWidget {
  const Daryo_Uz({Key? key}) : super(key: key);

  @override
  State<Daryo_Uz> createState() => _Daryo_UzState();
}

class _Daryo_UzState extends State<Daryo_Uz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daryo"),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search))],
      ),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
             child: Column(
               children: [
                 Container(child: Row(children: [Container(child: Text("Daryo",style: TextStyle(color: Colors.white,fontSize: 28.sp,fontWeight: FontWeight.w700),),),SizedBox(width: 36.w,),
                   Container(width: 89.8.w,height: 38.h,decoration: BoxDecoration(border: Border.all(width: 1.r,color: Colors.white),borderRadius: BorderRadius.only(topRight: Radius.zero,topLeft: Radius.circular(18),bottomLeft: Radius.circular(18)),color: Colors.white),child: TextButton(onPressed: (){showDialog(context: context, builder: (context)=>AlertDialog(title: Text("Daryo.uz"),content: Text("Lotinchaga o'zgarmaydi!"),actions: [TextButton(onPressed: (){Navigator.pop(context);}, child: Text("OK"))],));},child: Text("LOTINCHA"),),),
                   Container(width: 89.8.w,height: 38.h,decoration: BoxDecoration(border: Border.all(width: 1.w,color: Colors.white),borderRadius: BorderRadius.only(topRight: Radius.circular(18),bottomRight: Radius.circular(18)),color: Colors.blue),child: TextButton(onPressed: (){showDialog(context: context, builder: (context)=>AlertDialog(title: Text("Daryo.uz"),content: Text("Kirilchaga o'zgarmaydi!"),actions: [TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Ok"))],));},child: Text("КИРИЛЧА",style: TextStyle(color: Colors.white),),),)
                 ],),),
                 SizedBox(height: 40.h,),
                 Container(child: Row(children: [Container(child: Text("Toshkent",style: TextStyle(color: Colors.white,fontSize: 16),),),SizedBox(width: 140.w,),Container(height: 20,child: Image.asset("assets/images/ospaz.png",scale: 4,),),Container(child: Text("+12.0",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),)],),),
                 SizedBox(height: 10.h,),
                 Container(width: double.infinity,height: 2,color: Colors.grey[300],),
                 SizedBox(height: 8.h,),
                 Container(child: Row(children: [
                   Container(child: Image.asset("assets/images/do.png",scale: 18,),),
                   SizedBox(width: 2.w,),
                   Text("10769.78",style: TextStyle(color: Colors.white),),
                   SizedBox(width: 10.w,),
                   Container(child: Image.asset("assets/images/euro.png",scale: 22,),),
                   SizedBox(width: 2.w,),
                   Text("12166.62",style: TextStyle(color: Colors.white),),
                    SizedBox(width: 10.w,),
                   Container(child: Image.asset("assets/images/rubil.png",scale: 16,),),
                   SizedBox(width: 2.w,),
                   Text("146.17",style: TextStyle(color: Colors.white),),
                 ],),)

               ],
             ),
           ),
            ListTile(
              title: Text("Qo'llanma ekranini ko'rsatish"),
              onTap: (){},
              onLongPress: (){},
              tileColor: Color(0xFFFFFDD0),
            ),
            ListTile(
              title:const Text("So'ngi yangiliklar",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w500),),
              tileColor: Colors.grey[200],
              onTap: (){},
            ),
            ListTile(title:const Text("Mahalliy"),onTap: (){},),
            ListTile(title:const Text("Dunyo"),onTap: (){},),
            ListTile(title:const Text("Texnologiyalar"),onTap: (){},),
            Container(width: double.infinity,height: 1,color: Colors.grey,),
            ListTile(title:const Text("Tanlangan Xabarlar",style: TextStyle(color: Colors.green,fontSize: 16),),onTap: (){},),
            Container(width: double.infinity,height: 1,color: Colors.grey,),
            ListTile(title:const Text("Madaniyat"),onTap: (){},),
            ListTile(title:const Text("Avto"),onTap: (){},),
            ListTile(title:const Text("Sport"),onTap: (){},),
            ListTile(title:const Text("Foto"),onTap: (){},),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: Row(children: [
                   Expanded(
                     child: ListView(
                       shrinkWrap: true,
                       scrollDirection: Axis.horizontal,
                       children: [
                         Container(padding: const EdgeInsets.only(left: 10,top: 0),child: TextButton(onPressed: (){var snack = SnackBar(content: Text("Siz oflayinsiz iltimos internetni yoqing"));ScaffoldMessenger.of(context).showSnackBar(snack);},child: Text("So'ngi Yangiliklar",style: TextStyle(color: Colors.blue,fontSize: 14,fontWeight: FontWeight.w700),)),),
                         Container(padding: const EdgeInsets.only(left: 10,top: 10),child: Text("Asosiy Yangiliklar",style: TextStyle(color: Colors.blue,fontSize: 14,fontWeight: FontWeight.w700),),),
                         Container(padding: const EdgeInsets.only(left: 10,top: 10),child: Text("Eng ko'p Yangiliklar",style: TextStyle(color: Colors.blue,fontSize: 14,fontWeight: FontWeight.w700),),),
                         Container(padding: const EdgeInsets.only(left: 10,top: 10,right: 10),child: Text("Sport Yangiliklar",style: TextStyle(color: Colors.blue,fontSize: 14,fontWeight: FontWeight.w700),),),
                       ],
                     ),
                   )
                ],),
              ),
              SizedBox(height: 10.h,),
            Container(
            child: Column(
              children: [
                Container(child: Row(children: [const  Padding(padding: EdgeInsets.only(left: 14)),Container(child: Text("Malumot"),),SizedBox(width: 90.w,),Container(child: Text("17:30 | 8 Dekabr 2021 | "),),SizedBox(width: 6.w,),Container(child: Image.asset("assets/images/koz.png",scale: 4,),),SizedBox(width: 6.w,),Container(child: Text("522",style: TextStyle(color: Colors.blue),),)],),),
                SizedBox(height: 14.h,),
                Container(padding: const EdgeInsets.only(left: 14),child: Row(children: [Container(child: Image.asset("assets/images/oshroq.png",scale: 1.3,),),SizedBox(width: 20.w,),Container(child: Text("Lorem ipsum dolor sit amet\nconsectetur adipiscing\nelit. Suspendisse id ullamcorper\nassa, id pellentesque\nAliquam sem arcu, egestas\nsit amet nisi",style: TextStyle(fontWeight: FontWeight.w700),),)],),),
                SizedBox(height: 10.h,),
                Container(width: 325,height: 2,color: Colors.grey,),
                SizedBox(height: 10.h,),


                Container(child: Row(children: [const Padding(padding: EdgeInsets.only(left: 14)),Container(child: Text("Malumot"),),SizedBox(width: 90.w,),Container(child: Text("17:30 | 8 Dekabr 2021 | "),),SizedBox(width: 6.w,),Container(child: Image.asset("assets/images/koz.png",scale: 4,),),SizedBox(width: 6.w,),Container(child: Text("522",style: TextStyle(color: Colors.blue),),)],),),
                SizedBox(height: 14.h,),
                Container(padding:const  EdgeInsets.only(left: 14),child: Row(children: [Container(child: Image.asset("assets/images/tort.png",scale: 1.3,),),SizedBox(width: 20.w,),Container(child: Text("Lorem ipsum dolor sit amet\nconsectetur adipiscing\nelit. Suspendisse id ullamcorper\nassa, id pellentesque\nAliquam sem arcu, egestas\nsit amet nisi",style: TextStyle(fontWeight: FontWeight.w700),),)],),),
                SizedBox(height: 10.h,),
                Container(width: 325,height: 2,color: Colors.grey,),
                SizedBox(height: 10.h,),


                Container(child: Row(children: [const Padding(padding: EdgeInsets.only(left: 14)),Container(child: Text("Malumot"),),SizedBox(width: 90.w,),Container(child: Text("17:30 | 8 Dekabr 2021 | "),),SizedBox(width: 6.w,),Container(child: Image.asset("assets/images/koz.png",scale: 4,),),SizedBox(width: 6.w,),Container(child: Text("522",style: TextStyle(color: Colors.blue),),)],),),
                SizedBox(height: 14.h,),
                Container(padding:const  EdgeInsets.only(left: 14),child: Row(children: [Container(child:Image.network("https://picsum.photos/250?image=9",scale: 1.3,),width: 100.w,height: 94.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.sp))),SizedBox(width: 20.w,),Container(child: Text("Lorem ipsum dolor sit amet\nconsectetur adipiscing\nelit. Suspendisse id ullamcorper\nassa, id pellentesque\nAliquam sem arcu, egestas\nsit amet nisi",style: TextStyle(fontWeight: FontWeight.w700),),)],),),
                SizedBox(height: 10.h,),
                Container(width: 325,height: 2,color: Colors.grey,),
                SizedBox(height: 10.h,),


                Container(child: Row(children: [const Padding(padding: EdgeInsets.only(left: 14)),Container(child: Text("Malumot"),),SizedBox(width: 90.w,),Container(child: Text("17:30 | 8 Dekabr 2021 | "),),SizedBox(width: 6.w,),Container(child: Image.asset("assets/images/koz.png",scale: 4,),),SizedBox(width: 6.w,),Container(child: Text("522",style: TextStyle(color: Colors.blue),),)],),),
                SizedBox(height: 14.h,),
                Container(padding:const  EdgeInsets.only(left: 14),child: Row(children: [Container(child:Image.network("https://picsum.photos/250?image=7",scale: 1.3,),width: 100.w,height: 94.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.sp))),SizedBox(width: 20.w,),Container(child: Text("Lorem ipsum dolor sit amet\nconsectetur adipiscing\nelit. Suspendisse id ullamcorper\nassa, id pellentesque\nAliquam sem arcu, egestas\nsit amet nisi",style: TextStyle(fontWeight: FontWeight.w700),),)],),),
                SizedBox(height: 10.h,),
                Container(width: 325,height: 2,color: Colors.grey,),
                SizedBox(height: 10.h,),

                Container(child: Row(children: [const Padding(padding: EdgeInsets.only(left: 14)),Container(child: Text("Malumot"),),SizedBox(width: 90.w,),Container(child: Text("17:30 | 8 Dekabr 2021 | "),),SizedBox(width: 6.w,),Container(child: Image.asset("assets/images/koz.png",scale: 4,),),SizedBox(width: 6.w,),Container(child: Text("522",style: TextStyle(color: Colors.blue),),)],),),
                SizedBox(height: 14.h,),
                Container(padding:const  EdgeInsets.only(left: 14),child: Row(children: [Container(child:Image.network("https://picsum.photos/250?image=77",scale: 1.3,),width: 100.w,height: 94.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.sp))),SizedBox(width: 20.w,),Container(child: Text("Lorem ipsum dolor sit amet\nconsectetur adipiscing\nelit. Suspendisse id ullamcorper\nassa, id pellentesque\nAliquam sem arcu, egestas\nsit amet nisi",style: TextStyle(fontWeight: FontWeight.w700),),)],),),
                SizedBox(height: 10.h,),
                Container(width: 325,height: 2,color: Colors.grey,),

              ],
            ),
            )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:first_lesson/Quiz_app/quiz_app_page_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Result_page extends StatelessWidget {
  Map<int,bool> userResult;


   Result_page({Key? key,required this.userResult}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: 780.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/qu.png"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Container(margin: EdgeInsets.only(right: 280.r),child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>Quiz_app_page_2()));}, icon: Icon(Icons.arrow_back,size: 40,color: Colors.black,))),
              SizedBox(height: 20.h,),
              Container(
                width: 300.w,
                height: 500.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.sp),
                    color: Color(0xFF5D9BA4).withOpacity(0.5)),
                child: Center(
                  child: ListView.separated(
                    padding: EdgeInsets.only(left: 70.r),
                      itemCount: userResult.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (contex,int index)=>Container(child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 8).r),
                      Text("Question ${index+1}",style: TextStyle(fontSize: 34.sp),),
                      SizedBox(width: 10.w,),
                      userResult[index]!?Icon(Icons.check_box,color: Colors.green,size: 40,):Icon(Icons.clear_outlined,color: Colors.red,size: 40,),
                      SizedBox(height: 10.h,),
                    ],
                  ),),
                  separatorBuilder: (context,int index)=>SizedBox(height: 40.h,)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

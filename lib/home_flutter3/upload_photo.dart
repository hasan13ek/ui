import 'package:first_lesson/home_flutter3/upload_preveiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Upload_photo extends StatefulWidget {
  const Upload_photo({Key? key}) : super(key: key);

  @override
  State<Upload_photo> createState() => _Upload_photoState();
}

class _Upload_photoState extends State<Upload_photo> {
  @override

  final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
    onPrimary: Colors.green,
    elevation: 0,
    primary: Color(0xFF53E88B),
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 18,bottom: 18).r,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(18).r),
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: Container(margin: EdgeInsets.only(left: 10).r,
            child: Image.asset("assets/images/img.png")),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(child: Text("Upload Your Photo\nProfile",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25.sp),)),
              SizedBox(height: 10.0.h),
              Container(child: Text("This data will be displayed in your account\nprofile for security"),),
              SizedBox(height: 18.h),
                  Container(
                    width: 325.w,
                    height: 129.h,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22).r),color: Colors.white),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        Container(padding: EdgeInsets.only(top: 1,bottom: 1).r,child: Center(child: Image.asset("assets/images/galarey.png")),width: 80,height: 60,),
                        SizedBox(height: 4.h),
                        Container(child: Padding(
                          padding: EdgeInsets.only(top: 13).r,
                          child: Text("From Gallarey",style: TextStyle(fontWeight: FontWeight.w800),),
                        ),)
                      ],
                    ),
                  ),
              SizedBox(height: 18.h),
              Container(
                width: 325.w,
                height: 129.h,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22).r),color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Container(padding: EdgeInsets.only(top: 1,bottom: 1).r,child: Center(child: Image.asset("assets/images/fotaprat.png")),width: 80,height: 60,),
                    SizedBox(height: 4.h),
                    Container(child: Padding(
                      padding: EdgeInsets.only(top: 13).r,
                      child: Text("Take Photo",style: TextStyle(fontWeight: FontWeight.w800),),
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 105.h),
              Column(
                children: [
                  Center(
                    child:
                    Expanded(
                      child: Container(
                        child: ElevatedButton(
                          style: raisedButtonStyle3,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Upload_preview()));
                          },
                          child: Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16.sp),),
                        ),
                        width: 157.w,
                        height: 57.h,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    backgroundColor: Colors.grey[100],);
  }
}

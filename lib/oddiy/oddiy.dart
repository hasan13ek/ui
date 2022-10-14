import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Oddiy extends StatefulWidget {
  const Oddiy({Key? key}) : super(key: key);

  @override
  State<Oddiy> createState() => _OddiyState();
}
int ko = 12;
int b = 0;

class _OddiyState extends State<Oddiy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: 780.h,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: EdgeInsets.only(left: 300),width: 50,height: 40,color: Colors.greenAccent,child: Center(child: Text("$b/9")),),
              SizedBox(height: 4,),
              Container(
                width: 50,
                height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),color: Colors.greenAccent),
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 12,
                  height: ko.h,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),color: Colors.black),
                ),
              ),
              SizedBox(height: 80,),
              TextButton(onPressed: (){
                setState(() {
                  ko+=20;
                  if(ko==200){
                    ko=0;
                  }
                  b++;
                  if(b==9){b=0;}
                });
              }, child: Text("oshadi"))
            ],
          ),
        ),
      ),
    );
  }
}

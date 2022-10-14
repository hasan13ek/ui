import 'package:first_lesson/Models/quizmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Quiz_app/dabdala.dart';
import '../Quiz_app/result_page.dart';

class Modelez extends StatefulWidget {
  const Modelez({Key? key}) : super(key: key);

  @override
  State<Modelez> createState() => _ModelezState();
}
String buttonText = "Finish";
int start = 15;
class _ModelezState extends State<Modelez> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
        width: 180.w,
        height: 39.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.sp),
            gradient: LinearGradient(colors: [
              Color(0xFF72ADB6),
              Color(0xFF366269).withOpacity(0.7)
            ])),
        child: TextButton(onPressed: (){
          setState(() {
            if(buttonText == "Finish"){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Result_page(userResult: UserResult,)));
            }
            if(currentQuestionIndex !=QuestionModel.questions.length -1){
              start = 15;
              currentQuestionIndex++;}
            selectedIndex = -1;
            ko+=20;
            if(ko==100){ko=0;}
            b++;
            if(b==4){b=0;}

            if(currentQuestionIndex==QuestionModel.questions.length-1){
              buttonText = "Finish";
            }
          });
        }, child: Center(child: Text(buttonText,style: TextStyle(color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.w400),))),
      ),
    );
  }
}

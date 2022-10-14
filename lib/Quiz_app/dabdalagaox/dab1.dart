import 'package:first_lesson/Models/quizmodel.dart';
import 'package:first_lesson/Quiz_app/mazgi.dart';
import 'package:first_lesson/Quiz_app/optionwidget.dart';
import 'package:first_lesson/Quiz_app/quesWidget.dart';
import 'package:first_lesson/Quiz_app/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dabdala1 extends StatefulWidget {
  const Dabdala1({Key? key}) : super(key: key);

  @override
  State<Dabdala1> createState() => _DabdalaState();
}

Map<int,bool>UserResult={
  0:false,
  1:false,2:false,3:false,
};

String buttonText = "Next";
int selectedIndex = -1;
bool isSelected = false;

int currentQuestionIndex = 0;

class _DabdalaState extends State<Dabdala1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: 780.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/qu.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Container(
                width: 318.w,
                height: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    color: Color(0xFF5D9BA4).withOpacity(0.4)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      "Question - ${currentQuestionIndex + 1}",
                      style: TextStyle(
                          fontSize: 34.sp,
                          color: Colors.lightGreenAccent.withOpacity(0.9),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Image.network("https://xsgames.co/randomusers/avatar.php?g=male",scale: 4,),
                    SizedBox(height: 2.h,),
                    Container(
                      margin: EdgeInsets.only(left:30.r,right: 30.r),
                      child: Center(
                        child: Text(
                          QuestionModel.questions1[currentQuestionIndex].quistion,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),


              // OptionWidget(
              //     option: QuestionModel.questions[currentQuestionIndex].option1,
              //     isSelected: selectedIndex==1,
              //     onTap: () {
              //       setState(() {
              //         selectedIndex =1;
              //       });
              //     },),
              // OptionWidget(
              //     option: QuestionModel.questions[currentQuestionIndex].option2,
              //     isSelected: selectedIndex==2,
              //     onTap: () {
              //       setState(() {
              //         selectedIndex =2;
              //       });
              //     },
              // ),
              // OptionWidget(
              //   option: QuestionModel.questions[currentQuestionIndex].option2,
              //   isSelected: selectedIndex==3,
              //   onTap: () {
              //     setState(() {
              //       selectedIndex =3;
              //     });
              //   },
              // ),
              // OptionWidget(
              //   option: QuestionModel.questions[currentQuestionIndex].option2,
              //   isSelected: selectedIndex==4,
              //   onTap: () {
              //     setState(() {
              //       selectedIndex =4;
              //     });
              //   },
              // ),

              AnswersWidget(questionModel: QuestionModel.questions1[currentQuestionIndex], onAnswerSelected: (isTure){UserResult[currentQuestionIndex] = isTure;},),




              SizedBox(height: 85,),
              Container(
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
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Result_page(userResult: UserResult,)));
                    }
                    if(currentQuestionIndex !=QuestionModel.questions.length -1)
                      currentQuestionIndex++;
                    selectedIndex = -1;
                    if(currentQuestionIndex==QuestionModel.questions.length-1){
                      buttonText = "Finish";
                    }
                  });
                }, child: Center(child: Text(buttonText,style: TextStyle(color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.w400),))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

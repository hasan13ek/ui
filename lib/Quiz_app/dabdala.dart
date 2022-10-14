import 'dart:async';

import 'package:first_lesson/Models/modell.dart';
import 'package:first_lesson/Models/progresswidget.dart';
import 'package:first_lesson/Models/quizmodel.dart';
import 'package:first_lesson/Quiz_app/mazgi.dart';
import 'package:first_lesson/Quiz_app/optionwidget.dart';
import 'package:first_lesson/Quiz_app/quesWidget.dart';
import 'package:first_lesson/Quiz_app/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/timerwidget.dart';

class Dabdala extends StatefulWidget {
  const Dabdala({Key? key}) : super(key: key);

  @override
  State<Dabdala> createState() => _DabdalaState();
}
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Color(0xFF5d9ba4).withOpacity(0.5),
  minimumSize: Size(138, 36),
  padding: EdgeInsets.symmetric(horizontal: 26),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
  ),
);
Map<int, bool> UserResult = {
  0: false,
  1: false,
  2: false,
  3: false,
};

int start = 15;
int b = 0;
int ko = 0;
String buttonText = "Next";
int selectedIndex = -1;
bool isSelected = false;

int currentQuestionIndex = 0;

class _DabdalaState extends State<Dabdala> {
  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (start != 0) {
        setState(() {
          start--;
        });
      } else {
        nex(context);
      }
    });
  }

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
                height: 10.h,
              ),
              ProgressWidget(
                currentWidth: (MediaQuery.of(context).size.width * 0.78) *
                    ((currentQuestionIndex + 1) /
                        QuestionModel.questions.length),
              ),
              SizedBox(
                height: 10.h,
              ),
              Stack(
                children: [
                  Positioned(
                    child: TimerWidget(second: start),
                    top: 10,
                    left: 10,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    child: TweenAnimationBuilder<double>(
                      builder: (BuildContext context, value, Widget? child) {
                        return CircularProgressIndicator(
                          strokeWidth: 4,
                          backgroundColor: Colors.transparent,
                          color: Colors.orange.withOpacity(0.5),
                          value: value,
                        );
                      },
                      tween: Tween<double>(begin: 0.0, end: start / 15),
                      duration: Duration(seconds: 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
                          color: Colors.orange.withOpacity(0.6),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.r, right: 30.r),
                      child: Center(
                        child: Text(
                          QuestionModel
                              .questions[currentQuestionIndex].quistion,
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
                height: 10.h,
              ),
              AnswersWidget(
                questionModel: QuestionModel.questions[currentQuestionIndex],
                onAnswerSelected: (isTure) {
                  UserResult[currentQuestionIndex] = isTure;
                },
              ),
              SizedBox(
                height: 85,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nex(context);
                    });
                  },
                  child: Text("Next"),
              style: raisedButtonStyle,)
            ],
          ),
        ),
      ),
    );
  }

  nex(context) {
    setState(() {
      if (buttonText == "Finish") {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (_) => Result_page(
                      userResult: UserResult,
                    )));
      }
      if (currentQuestionIndex != QuestionModel.questions.length - 1) {
        start = 15;
        currentQuestionIndex++;
      }
      selectedIndex = -1;
      ko += 20;
      if (ko == 100) {
        ko = 0;
      }
      b++;
      if (b == 4) {
        b = 0;
      }
      if (currentQuestionIndex == QuestionModel.questions.length - 1) {
        buttonText = "Finish";
      }
    });
  }
}

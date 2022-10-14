import 'package:first_lesson/Models/quizmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionWidget extends StatefulWidget {
  String questionTitle;
  int index;
  QuestionWidget({Key? key, required this.questionTitle, required this.index})
      : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}
int xd = 0;
class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("Question - ${xd}"),
            SizedBox(height: 10.h,),
            Text(QuestionModel.questions[1].quistion)
          ],
        )
      ),
    );
  }
}

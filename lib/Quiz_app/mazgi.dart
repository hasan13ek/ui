import 'package:flutter/material.dart';

import '../Models/quizmodel.dart';
import 'optionwidget.dart';

class AnswersWidget extends StatefulWidget {
  QuestionModel questionModel;

  final ValueChanged<bool> onAnswerSelected;

  AnswersWidget({
    Key? key,
    required this.questionModel,
    required this.onAnswerSelected,
  }) : super(key: key);

  @override
  State<AnswersWidget> createState() => _AnswersWidgetState();
}

class _AnswersWidgetState extends State<AnswersWidget> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OptionWidget(
          option: widget.questionModel.option1,
          isSelected: selectedIndex == 1,
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
            widget.onAnswerSelected(
                widget.questionModel.TrueAnswer == selectedIndex);
          },
        ),
        OptionWidget(
          option: widget.questionModel.option2,
          isSelected: selectedIndex == 2,
          onTap: () {
            setState(() {
              selectedIndex = 2;
            });
            widget.onAnswerSelected(
                widget.questionModel.TrueAnswer == selectedIndex);
          },
        ),
        OptionWidget(
          isSelected: selectedIndex == 3,
          option: widget.questionModel.option3,
          onTap: () {
            setState(() {
              selectedIndex = 3;
            });
            widget.onAnswerSelected(
                widget.questionModel.TrueAnswer == selectedIndex);
          },
        ),
        OptionWidget(
          isSelected: selectedIndex == 4,
          option: widget.questionModel.option4,
          onTap: () {
            setState(() {
              selectedIndex = 4;
            });
            widget.onAnswerSelected(
                widget.questionModel.TrueAnswer == selectedIndex);
          },
        ),
      ],
    );
  }
}
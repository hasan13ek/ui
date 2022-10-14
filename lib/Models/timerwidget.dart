import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  int second;

  TimerWidget({Key? key, required this.second}) : super(key: key);

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          widget.second.toString().length == 1
              ? "0" + widget.second.toString()
              : widget.second.toString(),
          style: TextStyle(fontSize: 48,color: Color(0xFF5D9BA4).withOpacity(1)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
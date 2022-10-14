import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionWidget extends StatefulWidget {
  final String option;
  bool isSelected;
  VoidCallback onTap;

  OptionWidget({
    Key? key,
    required this.option,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.lightGreenAccent.withOpacity(0.7) : Color(0xFF5D9BA4).withOpacity(0.5),
          borderRadius: BorderRadius.circular(15.sp),
        ),
        margin: EdgeInsets.only(top: 12, left: 12, right: 12).r,
        padding: EdgeInsets.only(left: 30,top: 20).r,
        width: double.infinity,
        height: 60.h,
        child: Text(
          widget.option,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
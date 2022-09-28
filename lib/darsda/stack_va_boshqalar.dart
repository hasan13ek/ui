import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class St extends StatefulWidget {
  const St({Key? key}) : super(key: key);

  @override
  State<St> createState() => _StState();
}

class _StState extends State<St> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),color: Colors.black
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 150,
                  right: 120,
                  left: 120,
                  bottom: 120,
                  child: Text("SALOM",style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      ),
    backgroundColor: Colors.green,);
  }
}

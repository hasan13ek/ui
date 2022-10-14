import 'package:first_lesson/Quiz_app/quiz_app_page_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Quiz_App extends StatefulWidget {
  const Quiz_App({Key? key}) : super(key: key);

  @override
  State<Quiz_App> createState() => _Quiz_AppState();
}

class _Quiz_AppState extends State<Quiz_App> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz_app_page_2())));
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: 790.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/qu.png"),
                  fit: BoxFit.cover)),
          child: Center(child: Image.asset("assets/images/qu1.png",scale: 2,)),
        ),
      ),
    );
  }
}

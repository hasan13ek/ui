import 'package:first_lesson/home_flutter10_amalyot_cofe/coffe_page4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Coffe_page3 extends StatefulWidget {
  const Coffe_page3({Key? key}) : super(key: key);

  @override
  State<Coffe_page3> createState() => _Coffe_page3State();
}

class _Coffe_page3State extends State<Coffe_page3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 780.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/cobc.png"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 46,
                ),
                Container(
                    margin: EdgeInsets.only(left: 40),
                    child: IconButton(
                        onPressed: () {Navigator.pop(context);},
                        icon: Icon(
                          Icons.arrow_circle_left_outlined,
                          size: 40,
                          color: Colors.white,
                        ))),
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: Text(
                    "Sign-Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 28.sp),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Center(
                  child: Container(
                    width: 353.w,
                    height: 543.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(42)),
                        color: Color(0xFF6D4831)),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10, right: 10).r),
                        SizedBox(
                          height: 40.h,
                        ),
                        buildTextField("Full Name"),
                        buildTextField("Email Adress"),
                        buildTextField("Phone Number"),
                        buildTextField("Create Password"),
                        buildTextField("Conform Password"),
                        SizedBox(height: 12.h,),
                        Container(
                          width: 312.w,
                          height: 53.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26).r,
                              color: Colors.white),
                          child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>Coffe_page4()));}, child: Center(child: Text("Sumbit",style: TextStyle(color: Color(0xFF6D4831)),))),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

Widget buildTextField(
  String name,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 6,
      ),
      Container(
        child: Text(
          name,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
      const SizedBox(
        height: 1,
      ),
      Container(
        width: 322,
        height: 48,
        child: TextField(
          style: const TextStyle(color: Colors.white),
          keyboardType: TextInputType.text,
          obscureText: false,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFC59C7F).withOpacity(0.5),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ),
      ),
    ],
  );
}

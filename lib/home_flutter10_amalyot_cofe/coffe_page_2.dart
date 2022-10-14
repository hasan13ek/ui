import 'package:first_lesson/home_flutter10_amalyot_cofe/coffe_page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Coffe2 extends StatefulWidget {
  const Coffe2({Key? key}) : super(key: key);

  @override
  State<Coffe2> createState() => _Coffe2State();
}

class _Coffe2State extends State<Coffe2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 780,
            // height: MediaQuery.of(context).size.height * 7,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/id/1/200/300"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: 14,
                ),
                Container(
                  margin: EdgeInsets.only(right: 300.r),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_circle_left_outlined,
                        color: Colors.white,
                        size: 34,
                      )),
                ),
                SizedBox(
                  height: 66.h,
                ),
                Container(
                  width: 333.w,
                  height: 469.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(42.r)),
                      color: Color(0xFF6D4831)),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 17, right: 222).r,
                          child: Text(
                            "Hello!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 25),
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 26, right: 26).r,
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: "Phone number or Email",
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 26, right: 26).r,
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.text,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: const TextStyle(color: Colors.white),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Colors.white
                                ),
                              ),
                            ),
                          )
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>Coffe_page3()));
                        },
                        child: Container(
                          width: 296.w,
                          height: 53.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24.r)),
                              color: Colors.white),
                          child: Center(
                            child: TextButton(
                              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>Coffe_page3()));},
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Color(0xFF74533D),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        "or Sign in with",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 120.r),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/ras1.png",
                              scale: 2.5,
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Image.asset(
                              "assets/images/ras2.png",
                              scale: 2.5,
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Image.asset(
                              "assets/images/ras3.png",
                              scale: 2.5,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 11.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont have an account?",style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 4.h,),
                          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>Coffe_page3()));}, child: Text("Sing-Up",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

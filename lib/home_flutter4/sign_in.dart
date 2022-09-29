import 'package:first_lesson/home_flutter3/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  State<Sign_in> createState() => _Payment_methodState();
}

class _Payment_methodState extends State<Sign_in> {
  @override
  bool isDark = false;
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.blue,
      elevation: 0,
      primary: isDark?Colors.white10:Colors.white,
      minimumSize: Size(0, 0),
      padding: EdgeInsets.only(top: 22,bottom: 28).r,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(28).r),
      ),
    );
    final ButtonStyle raisedButtonStyle1 = ElevatedButton.styleFrom(
      onPrimary: Colors.blue,
      elevation: 0,
      primary: Colors.white,
      minimumSize: Size(0, 0),
      padding: EdgeInsets.only(top: 6,bottom: 7).r,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(28).r),
      ),
    );
    final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
      onPrimary: Colors.blue,
      elevation: 0,
      primary: Colors.white,
      minimumSize: Size(0, 0),
      padding: EdgeInsets.only(top: 20,bottom: 21).r,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(28).r),
      ),
    );
    final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
      onPrimary: Colors.green,
      elevation: 0,
      primary: Color(0xFF53E88B),
      minimumSize: Size(0, 0),
      padding: EdgeInsets.only(top: 18,bottom: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark?Colors.black:Colors.grey[100],
        elevation: 0,
        title: InkWell(
            onTap: (){},
            onLongPress: (){},
            child: Container(child: Image.asset("assets/images/img.png"),width: 45,height: 45,)
        ),
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/"))),
        padding: EdgeInsets.all(20).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Container(child: Text("Fill in your bio to get\nstarted",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text("This data will be displayed in your account\nprofile for security",style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 20.h,),
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {},
                    child: Container(padding: EdgeInsets.only(right: 210),child: Text("First Name",style: TextStyle(color: Color(0xFF8C8C8C)),)),
                  ),
                  width: 347.w,
                  height: 68.h,
                ),
              ],
            ),
            SizedBox(height: 17.h,),
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {},
                    child: Container(padding: EdgeInsets.only(right: 210),child: Text("Last Name",style: TextStyle(color: Color(0xFF8C8C8C)),)),
                  ),
                  width: 347.w,
                  height: 68.h,
                ),
              ],
            ),
            SizedBox(height: 17,),
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {},
                    child: Container(padding: EdgeInsets.only(right: 185),child: Text("Mobile Number",style: TextStyle(color: Color(0xFF8C8C8C)),)),
                  ),
                  width: 347.w,
                  height: 68.h,
                ),
              ],
            ),
            SizedBox(height: 116.5.h,),
            Column(
              children: [
                Center(
                  child:
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        style: raisedButtonStyle3,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment_method()));
                        },
                        child: Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                      ),
                      width: 157,
                      height: 57,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: isDark?Colors.black:Colors.grey[198],
    );
  }
}

class Mycolors extends Object{
  static const My_color1 = Color(0xFF53E88B);
  static const My_color2 = Color(0xFF15BE77);
}

import 'package:first_lesson/home_flutter3/upload_photo.dart';
import 'package:flutter/material.dart';

class Payment_method extends StatefulWidget {
  const Payment_method({Key? key}) : super(key: key);

  @override
  State<Payment_method> createState() => _Payment_methodState();
}

class _Payment_methodState extends State<Payment_method> {
  @override
  bool isDark = false;
  Widget build(BuildContext context) {
    isDark =  Theme.of(context).brightness == Brightness.dark;
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.blue,
      elevation: 0,
      primary: isDark?Colors.grey[800]:Colors.white,
      minimumSize: Size(0, 0),
      padding: EdgeInsets.only(top: 22,bottom: 28),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
    final ButtonStyle raisedButtonStyle1 = ElevatedButton.styleFrom(
      onPrimary: Colors.blue,
      elevation: 0,
      primary: isDark?Colors.grey[800]:Colors.white,
      minimumSize: Size(0, 0),
      padding: EdgeInsets.only(top: 6,bottom: 7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
    final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
      onPrimary: Colors.blue,
      elevation: 0,
      primary: isDark?Colors.grey[800]:Colors.white,
      minimumSize: Size(0, 0),
      padding: EdgeInsets.only(top: 20,bottom: 21),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
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
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Container(child: Text("Payment Method",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text("This data will be displayed in your account\nprofile for security",style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {},
                    child: isDark?Image.asset("assets/images/paypal1.png"):Image.asset("assets/images/paypal.png"),
                  ),
                  width: 335,
                  height: 73,
                ),
              ],
            ),
            SizedBox(height: 17,),
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                    style: raisedButtonStyle1,
                    onPressed: () {},
                    child: isDark?Image.asset("assets/images/visa1.png"):Image.asset("assets/images/visa.png"),
                  ),
                  width: 335,
                  height: 73,
                ),
              ],
            ),
            SizedBox(height: 17,),
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                    style: raisedButtonStyle2,
                    onPressed: () {},
                    child: isDark?Image.asset("assets/images/pay1.png"):Image.asset("assets/images/payoner.png"),
                  ),
                  width: 335,
                  height: 73,
                ),
              ],
            ),
            SizedBox(height: 66,),
            Column(
              children: [
                Center(
                  child: 
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        style: raisedButtonStyle3,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Upload_photo()));
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

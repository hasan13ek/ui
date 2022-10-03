import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Flu8 extends StatefulWidget {
  const Flu8({Key? key}) : super(key: key);

  @override
  State<Flu8> createState() => _Flu8State();
}

class _Flu8State extends State<Flu8> {
  @override
  bool isB = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType:  TextInputType.phone,
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(onPressed: (){},icon: Icon(Icons.phone),),
                    hintText:  "Telefon Raqam kiriting",
                    border:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType:  TextInputType.visiblePassword,
                  obscureText: !isB,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(onPressed: (){},icon: Icon(Icons.lock),),
                    suffixIcon: IconButton(onPressed: (){setState(() {isB=!isB;});}, icon: isB?Icon(Icons.visibility):Icon(Icons.visibility_off),
                      //
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

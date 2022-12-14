import 'package:first_lesson/home_flutter3/edit_location.dart';
import 'package:flutter/material.dart';

class Edit_paymnets extends StatefulWidget {
  const Edit_paymnets({Key? key}) : super(key: key);
  @override
  State<Edit_paymnets> createState() => _Edit_paymnetsState();
}

class _Edit_paymnetsState extends State<Edit_paymnets> {
  @override
  bool isD=false;
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit_location())));
  }
  Widget build(BuildContext context) {
    isD=Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isD?Colors.black:Colors.grey[200],
        elevation: 0,
        leading: InkWell(
          onTap: (){},
          child: Container(padding: EdgeInsets.only(left: 10),child: Image.asset("assets/images/img.png")),
        ),
      ),
    body: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Paymnet",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25),),
          ),),
          SizedBox(height: 20,),
          Container(width: 335,height: 73,
            child: Container(
    child: Row(
    children: [
    Container(padding: EdgeInsets.only(left: 20),child: Image.asset("assets/images/paypal1.png",width: 86,height: 23,),),
    SizedBox(width: 65,height: 30,),
    Container(child: Text("2121 6352 8465 ****",style: TextStyle(fontWeight: FontWeight.w400 ),),),
    ],
    ),
    ),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: isD?Colors.grey[800]:Colors.white,
          ),
          ),
          SizedBox(height: 17,),
          Container(width: 335,height: 73,
            child: Container(
              child: Row(
                children: [
                  Container(padding: EdgeInsets.only(left: 20),child: Image.asset("assets/images/visa1.png",width: 86,height: 60,),),
                  SizedBox(width: 65,height: 30,),
                  Container(child: Text("2121 6352 8465 ****",style: TextStyle(fontWeight: FontWeight.w400 ),),),
                ],
              ),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: isD?Colors.grey[800]:Color(0xFFF6F6F6),
            ),
          ),
          SizedBox(height: 17,),
          Container(width: 335,height: 73,
            child: Container(
              child: Row(
                children: [
                  Container(padding: EdgeInsets.only(left: 20),child: Image.asset("assets/images/pay1.png",width: 86,height: 32,),),
                  SizedBox(width: 65,height: 30,),
                  Container(child: Text("2121 6352 8465 ****",style: TextStyle(fontWeight: FontWeight.w400 ),),),
                ],
              ),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: isD?Colors.grey[800]:Color(0xFFF6F6F6),
            ),
          ),
        ],
      ),
    ),
    backgroundColor: isD?Colors.black:Colors.grey[200],);
  }
}

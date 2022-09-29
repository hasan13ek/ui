import 'package:first_lesson/home_flutter3/payments.dart';
import 'package:flutter/material.dart';

class Call_Ringing extends StatefulWidget {
  const Call_Ringing({Key? key}) : super(key: key);

  @override
  State<Call_Ringing> createState() => _Call_RingingState();
}

class _Call_RingingState extends State<Call_Ringing> {
  @override
  bool isD = false;
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Payments())));
  }
  final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
    onPrimary: Colors.blue,
    elevation: 0,
    primary: Color(0xFFF6F6F6),
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 6,bottom: 7),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  );
  final ButtonStyle raisedButtonStyle1 = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    elevation: 0,
    primary: Color(0xFFE33737),
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 6,bottom: 7),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  );
  Widget build(BuildContext context) {
    isD = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(78.0),
                child: Container(width: 200,height: 150,
                child: Image.asset("assets/images/brat.png"),),
              ),
              // SizedBox(height: 10,),
              Container(width: 240,height: 80,
              child: Column(
                children: [
                  Text("Richard Lewis",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
                  SizedBox(height: 14,),
                  Text("Ringning ...",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                ],
              ),),
              const SizedBox(height: 74,),
              Center(
                child: Container(
                  child: Row(children: [
                    Padding(padding: EdgeInsets.only(left: 80)),
                    Center(child: Container(child:
                    ElevatedButton(
                      style: raisedButtonStyle3,
                      onPressed: () {},
                      child: Image.asset("assets/images/vol.png",color: Color(0xFF53E88B),scale: 2,)
                    ),
                      width: 78,height: 78,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),color: Colors.greenAccent),)),
                    const SizedBox(width: 20,),
                    Center(child: Container(child: ElevatedButton(
                        style: raisedButtonStyle1,
                        onPressed: () {},
                        child: Image.asset("assets/images/x.png",scale: 2,)
                    ),width: 78,height: 78,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50))),)),
                  ],),
                ),
              ),
            ],
          ),
        ),
      ),
    backgroundColor: isD?Colors.black:Colors.white,);
  }
}

//Image.asset("assets/images/vol.png",color: Color(0xFF53E88B),)
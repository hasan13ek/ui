import 'package:flutter/material.dart';

class Sign_up_notification extends StatefulWidget {
  const Sign_up_notification({Key? key}) : super(key: key);

  @override
  State<Sign_up_notification> createState() => _Sign_up_notificationState();
}

class _Sign_up_notificationState extends State<Sign_up_notification> {
  @override
  final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
    onPrimary: Colors.blue,
    elevation: 0,
    primary: Color(0xFF53E88B),
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 6,bottom: 7),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(31),
          child: Column(
            children: [
              SizedBox(height: 120,),
              Container(
                width: 227,
                height: 152,
                // color: Colors.red,
                child: Image.asset("assets/images/tugash.png"),
              ),
              SizedBox(height: 13,),
              Container(
                child: Column(
                  children: [
                    Text("Congrats!",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 40,color: Color(0xFF53E88B)),
                    ),
                    SizedBox(height: 10,),
                    Text("Your Profile Is Ready To Use",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                  ],
                ),
              ),
              SizedBox(height: 105,),
              Column(
                children: [
                  Center(
                    child:
                    Expanded(
                      child: Container(
                        child: ElevatedButton(
                          style: raisedButtonStyle3,
                          onPressed: () {},
                          child: Text("Try Order",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
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
      ),
    );
  }
}

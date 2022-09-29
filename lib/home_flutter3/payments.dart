import 'package:first_lesson/home_flutter3/edit_payments.dart';
import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  bool isD = false;
  final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
    onPrimary: Colors.greenAccent,
    elevation: 0,
    primary: Color(0xFFFEFEFF),
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 18,bottom: 18),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(18)),
    ),
  );
  Widget build(BuildContext context) {
    isD = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: isD?Colors.black:Colors.grey[200],
          elevation: 0,
          leading: InkWell(
            onTap: (){},
            child: Container(margin: EdgeInsets.only(left: 20),child: Image.asset("assets/images/img.png"),),
          ),
        ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Container(child:Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text("Confirm Order",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
            ),),
            SizedBox(height: 14,),
            Container(
              width: 335,
              height: 108,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: isD?Colors.grey[800]:Colors.white),
              child: Column(
                children: [
                      Container(child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text('Delvir To',style: TextStyle(color: Color(
                                0xDB656565)),),
                          ),
                          SizedBox(width: 190,),
                          TextButton(onPressed: (){}, child: Text("Edit",style: TextStyle(color: Color(0xFF53E88B)),)),
                        ],
                      ),),
                  Container(
                    child: Row(
                      children: [
                        Container(padding: EdgeInsets.only(left: 6),child: Container(width: 33,height: 33,child: Image.asset("assets/images/po.png")),),
                        SizedBox(width: 12,),
                        Container(child: Text("4517 Washington Ave. Manchester,\nKentucky 39495",style: TextStyle(fontWeight: FontWeight.w500,fontSize:15 ),),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14,),
            Container(
              width: 335,
              height: 108,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),color: isD?Colors.grey[800]:Colors.white),
              child: Column(
                children: [
                  Container(child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Payment Method',style: TextStyle(color: Color(
                            0xDB656565)),),
                      ),
                      SizedBox(width: 136,),
                      TextButton(onPressed: (){}, child: Text("Edit",style: TextStyle(color: Color(0xFF53E88B)),)),
                    ],
                  ),),
                  Container(
                    child: Row(
                      children: [
                        Container(padding: EdgeInsets.only(left: 20),child: Image.asset("assets/images/paypal1.png",width: 86,height: 23,),),
                        SizedBox(width: 65,height: 30,),
                        Container(child: Text("2121 6352 8465 ****",style: TextStyle(fontWeight: FontWeight.w400 ),),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:14),
            Container(
              width: 347,
              height: 185,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(22)),gradient: LinearGradient(colors: [Color(0xFF53E88B),Color(0xFF15BE77)])),//asosiy kontainer
              child: Column(
                children: [
                  Container(
                        child: Row(
                          children: [
                            SizedBox(height: 45,),
                            Container(padding: EdgeInsets.only(left: 30),child: Text("Sub-Total",style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xFFFEFEFF)),),),
                            SizedBox(width: 168,),
                            Container(child: Text("120 %",style: TextStyle(fontWeight: FontWeight.w800,color: Color(0xFFFEFEFF))),),
                          ],
                        ),
                      ),
                  Container(
                    child: Row(
                      children: [
                        Container(padding: EdgeInsets.only(left: 30),child: Text("Delivery Charge",style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xFFFEFEFF)),),),
                        SizedBox(width: 131,),
                        Container(child: Text("10 %",style: TextStyle(fontWeight: FontWeight.w800,color: Color(0xFFFEFEFF))),)
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(height: 20,),
                        Container(padding: EdgeInsets.only(left: 30),child: Text("Discount",style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xFFFEFEFF)),),),
                        SizedBox(width: 178,),
                        Container(child: Text("20 %",style: TextStyle(fontWeight: FontWeight.w800,color: Color(0xFFFEFEFF))),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(height: 10,),
                        Container(padding: EdgeInsets.only(left: 30),child: Text("Total",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,color: Color(0xFFFEFEFF)),),),
                        SizedBox(width: 190,),
                        Container(child: Text("150 %",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: Color(0xFFFEFEFF))),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: ElevatedButton(
                      style: raisedButtonStyle3,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit_paymnets()));
                      },
                      child: Container(child: Text("Place My Order",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),)),
                    ),
                    width: 300,
                    height: 53,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    backgroundColor: isD?Colors.black:Colors.grey[200],);
  }
}

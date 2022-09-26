import 'package:flutter/material.dart';

class My_cart extends StatefulWidget {
  const My_cart({Key? key}) : super(key: key);

  @override
  State<My_cart> createState() => _My_cartState();
}

class _My_cartState extends State<My_cart> {
  @override
  int number = 0;
  int pul = 0;
  final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
    onPrimary: Colors.greenAccent,
    elevation: 0,
    primary: Colors.blue,
    minimumSize: Size(0, 0),
    padding: EdgeInsets.only(top: 18,bottom: 18),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){},
          child: Image.asset("assets/images/img.png"),
        ),
        backgroundColor: Colors.grey[200],
        title: Text("My cart",style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 4,),
            Container(
              // height: 100,
              child: Row(
                children: [
                  Container(child: Image.asset("assets/images/brat.png"),width: 100,height: 90,),
                  Container(
                    child: 
                    Column(
                      children: [
                        SizedBox(height: 0,),
                        Container(padding: EdgeInsets.only(right: 100),child: Text("Peace Skull Shirt",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)),
                        SizedBox(height: 2,),
                        Container(padding: EdgeInsets.only(right: 180),child: Text("Black - L",style: TextStyle(fontSize: 15),)),
                        Row(
                          children: [
                            Container(child: Text("&20.90",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),),
                            SizedBox(width: 44,),
                            Row(
                              children: [
                                Container(child: TextButton(onPressed: (){setState(() {number--;});}, child: Text("-",style: TextStyle(fontSize: 29,fontWeight: FontWeight.w900,color: Colors.black),)),),
                                Container(child: Text("$number")),
                                Container(child: TextButton(onPressed: (){setState(() {number++;});}, child: Text("+",style: TextStyle(fontSize: 29,fontWeight: FontWeight.w900,color: Colors.black),)),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(left: 12,bottom:0),
                  ),
                ],
              ),
            ),

            SizedBox(height: 4,),
            Container(
              // height: 100,
              child: Row(
                children: [
                  Container(child: Image.asset("assets/images/brat.png"),width: 100,height: 90,),
                  Container(
                    child:
                    Column(
                      children: [
                        SizedBox(height: 0,),
                        Container(padding: EdgeInsets.only(right: 62),child: Text("Myrtle Beach Sweater",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)),
                        SizedBox(height: 2,),
                        Container(padding: EdgeInsets.only(right: 190),child: Text("Blue - L",style: TextStyle(fontSize: 15),)),
                        Row(
                          children: [
                            Container(child: Text("&32.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),),
                            SizedBox(width: 44,),
                            Row(
                              children: [
                                Container(child: TextButton(onPressed: (){setState(() {number--;});}, child: Text("-",style: TextStyle(fontSize: 29,fontWeight: FontWeight.w900,color: Colors.black),)),),
                                Container(child: Text("$number")),
                                Container(child: TextButton(onPressed: (){setState(() {number++;});}, child: Text("+",style: TextStyle(fontSize: 29,fontWeight: FontWeight.w900,color: Colors.black),)),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(left: 12,bottom:0),
                  ),
                ],
              ),
            ),

            SizedBox(height: 4,),
            Container(
              // height: 100,
              child: Row(
                children: [
                  Container(child: Image.asset("assets/images/brat.png"),width: 100,height: 90,),
                  Container(
                    child:
                    Column(
                      children: [
                        SizedBox(height: 0,),
                        Container(padding: EdgeInsets.only(right: 152),child: Text("Kings Shirt",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)),
                        SizedBox(height: 2,),
                        Container(padding: EdgeInsets.only(right: 180),child: Text("Black - M",style: TextStyle(fontSize: 15),)),
                        Row(
                          children: [
                            Container(child: Text("&22.90",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),),
                            SizedBox(width: 44,),
                            Row(
                              children: [
                                Container(child: TextButton(onPressed: (){setState(() {number--;});}, child: Text("-",style: TextStyle(fontSize: 29,fontWeight: FontWeight.w900,color: Colors.black),)),),
                                Container(child: Text("$number")),
                                Container(child: TextButton(onPressed: (){setState(() {number++;});}, child: Text("+",style: TextStyle(fontSize: 29,fontWeight: FontWeight.w900,color: Colors.black),)),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(left: 12,bottom:0),
                  ),
                ],
              ),
            ),

            SizedBox(height: 4,),
            Container(
              // height: 100,
              child: Row(
                children: [
                  Container(child: Image.asset("assets/images/brat.png"),width: 100,height: 90,),
                  Container(
                    child:
                    Column(
                      children: [
                        SizedBox(height: 0,),
                        Container(padding: EdgeInsets.only(right: 130),child: Text("Eywa Hoodie",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)),
                        SizedBox(height: 2,),
                        Container(padding: EdgeInsets.only(right: 180),child: Text("Grey - L",style: TextStyle(fontSize: 15),)),
                        Row(
                          children: [
                            Container(child: Text("&30.90",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),),
                            SizedBox(width: 44,),
                            Row(
                              children: [
                                Container(child: TextButton(onPressed: (){setState(() {number--;});}, child: Text("-",style: TextStyle(fontSize: 29,fontWeight: FontWeight.w900,color: Colors.black),)),),
                                Container(child: Text("$number")),
                                Container(child: TextButton(onPressed: (){setState(() {number++;});}, child: Text("+",style: TextStyle(fontSize: 29,fontWeight: FontWeight.w900,color: Colors.black),)),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(left: 12,bottom:0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 38,),
            Container(
              padding: EdgeInsets.only(right: 8,left: 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(child: Text("Total"),),SizedBox(width: 100,),SizedBox(width: 135,),Container(child: Text("&127.60",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),)],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: ElevatedButton(
                      style: raisedButtonStyle3,
                      onPressed: () {},
                      child: Container(child: Text("Check Out",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)),
                    ),
                    width: 350,
                    height: 53,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class day_page5 extends StatefulWidget {
  const day_page5({Key? key}) : super(key: key);

  @override
  State<day_page5> createState() => _day_page5State();
}

class _day_page5State extends State<day_page5> {
  @override
  String numbers = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telefon"),
      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Container(width: 350,height: 120,child: Center(child: Text("${numbers}",style: TextStyle(color: Colors.black,fontSize: 35),)),),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){
                  setState(() {
                    numbers+='1';
                  });
              },
                  child: Center(child: Column(
                children: [
                  Text("1",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text("",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){setState(() {
                numbers+='2';
              });}, child: Center(child: Column(
                children: [
                  Text("2",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text("abs",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){setState(() {
                numbers+='3';
              });}, child: Center(child: Column(
                children: [
                  Text("3",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text("def",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){setState(() {
                numbers+='4';
              });}, child: Center(child: Column(
                children: [
                  Text("4",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text("ghi",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){setState(() {
                numbers+='5';
              });}, child: Center(child: Column(
                children: [
                  Text("5",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text("jkl",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){setState(() {
                numbers+='6';
              });}, child: Center(child: Column(
                children: [
                  Text("6",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text("mno",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){setState(() {
                numbers+='7';
              });}, child: Center(child: Column(
                children: [
                  Text("7",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text("pqrc",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){setState(() {
                numbers+='8';
              });}, child: Center(child: Column(
                children: [
                  Text("8",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text("tuv",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){setState(() {
                numbers+='9';
              });}, child: Center(child: Column(
                children: [
                  Text("9",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text("wxyz",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){
                  setState(() {
                    numbers+='*';
                  });
              }, child: Center(child: Column(
                children: [
                  Center(child: Text("*",style: TextStyle(color: Colors.black,fontSize: 30),)),
                  Text("",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){
                  setState(() {
                    numbers+='0';
                  });
              }, child: Center(child: Column(
                children: [
                  Text("0",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text("+",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
              SizedBox(width: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,boxShadow: [BoxShadow(blurRadius: 1)]),
                width: 90,height: 80,child: TextButton(onPressed: (){
                  setState(() {
                    numbers=numbers.substring(0,numbers.length-1);
                  });
              }, child: Center(child: Column(
                children: [
                  Text("<",style: TextStyle(color: Colors.black,fontSize: 30),),
                  Text("delete",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

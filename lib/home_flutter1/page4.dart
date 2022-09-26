import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Flutter Image tutorialkart.com'),
    ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Center(
            child: Container(
              decoration:const BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white
              ),
            // child: Image.asset("assets/images/a_dot_burr.jpeg"),
              child: Image(
                image: AssetImage("assets/images/tv.png")
              ),
            width: 190,
            height: 170,),
          ),
          SizedBox(height: 14,),
          Center(
            child: Container(
              decoration:const BoxDecoration(
                // color: Colors.red,
                // backgroundBlendMode: BlendMode.clear,
                borderRadius: BorderRadius.all(Radius.circular(50)),color:Colors.white
              ),
              child: Image(
                image: AssetImage("assets/images/tv.png"),
              fit: BoxFit.fill,
            ),
              width: 190,
              height: 160,),
          ),
        ],
      ),
    backgroundColor: Colors.cyanAccent,);
  }
}

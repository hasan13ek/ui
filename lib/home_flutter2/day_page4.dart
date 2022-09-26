import 'package:flutter/material.dart';

class day_page4 extends StatefulWidget {
  const day_page4({Key? key}) : super(key: key);

  @override
  State<day_page4> createState() => _day_page4State();
}

class _day_page4State extends State<day_page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nimadir"),
      ),
      body: Column(
        children: [
          SizedBox(width: 500,),
          Container(width: 110,height: 110,color: Colors.red,),
          Container(width: 110,height: 110,color: Colors.yellow,),
          Container(width: 110,height: 110,color: Colors.greenAccent,),
        ],
      ),
    );
  }
}

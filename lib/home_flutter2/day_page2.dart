import 'package:flutter/material.dart';

class day2Page extends StatefulWidget {
  const day2Page({Key? key}) : super(key: key);

  @override
  State<day2Page> createState() => _day2PageState();
}

class _day2PageState extends State<day2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview'),
      ),
      body:
          Column(
           children:[
             SizedBox(width: 16,height: 10),
             Row(
               children: [
                 SizedBox(width: 10,),
                 Container(
                   decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.red,),
                   width: 160,
                   height: 153,
                 ),
                 SizedBox(width: 10,),
                 Container(
                   decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.yellow,),
                   width: 160,
                   height: 150,
                 ),
               ],
             ),
             SizedBox(width: 10,height: 10),
             Row(
               children: [
                 SizedBox(width: 10,),
                 Container(
                   decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.green,),
                   width: 160,
                   height: 150,
                 ),
                 SizedBox(width: 10,),
                 Container(
                   decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.blue,),
                   width: 160,
                   height: 150,
                 ),
               ],
             ),
             SizedBox(width: 10,height: 10),
             Row(
               children: [
                 SizedBox(width: 10,),
                 Container(
                   decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.deepOrangeAccent,),
                   width: 160,
                   height: 150,
                 ),
                 SizedBox(width: 15,),
                 Container(
                   decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.deepPurpleAccent,),
                   width: 160,
                   height: 150,
                 ),
               ],
             ),
           ],
          ),
    );
  }
}

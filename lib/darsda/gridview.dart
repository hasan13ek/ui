import 'package:flutter/material.dart';
import 'dart:math';

class Gridd extends StatefulWidget {
  const Gridd({Key? key}) : super(key: key);

  @override
  State<Gridd> createState() => _GriddState();
}

class _GriddState extends State<Gridd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Drawer(),
      ),
      body: GridView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: 30,
        itemBuilder: (BuildContext context,int index){
            return kon();
        }
      ),
    );
  }
}
int numm = 0;
Widget kon(){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
    width: 40,
    height: 120,
    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
    child: Center(child: Text("${ko()}",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white,fontSize: 28),)),
  );
}

 ko(){
  return numm==100?numm=0:numm++;
}
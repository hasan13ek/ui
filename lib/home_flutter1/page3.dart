import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Application'),
      ),
      body: Center(
        child: Container(
          child: Center(child: Text('Hello world')),
          decoration: BoxDecoration(
              border: Border.all(width: 5,color: Colors.black),
              color: Colors.yellow,
    borderRadius: const BorderRadius.only(topLeft: Radius.circular(50),
      topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      )
          ),
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

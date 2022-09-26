import 'package:flutter/material.dart';

class Page11 extends StatelessWidget {
  const Page11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("App")),
      ),
      body: Column(
        children: [
          Container(
            width: 320,
            height: 470,
            color: Colors.lightGreen,
            alignment: Alignment.center,
            child: Container(
              width: 270,
              height: 430,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: Container(
                width: 213,
                height: 370,
                color: Colors.lightBlueAccent,
                alignment: Alignment.center,
                child: Container(
                  width: 160,
                  height: 290,
                  color: Colors.greenAccent,
                  child: Center(child: Text('Qildimmi')),
                ),
              ),
            ),
          ),
        ],
      ),

    backgroundColor: Colors.yellow,);
  }
}

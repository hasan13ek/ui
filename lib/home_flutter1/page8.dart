import 'package:flutter/material.dart';

class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title: Text("Rounded corner image wiedgit"),
      ),
      body: Center(
        child: Container(
          child: Image(
            image: AssetImage('assets/images/gul.png'),
          ),

          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
          width: 300,
          height: 190,
        ),
      ),

    backgroundColor: Colors.grey,);
  }
}

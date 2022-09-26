import 'package:flutter/material.dart';

class Page10 extends StatelessWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Image(
            image: AssetImage("assets/images/shu.webp"),
            width: 300,
          ),
        )
      ),
    );

  }
}

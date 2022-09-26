import 'package:flutter/material.dart';

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Border Radius FlutterComer"),
      ),
      body: Center(
        child: Container(
          decoration:const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
              bottomLeft: Radius.circular(50))
          ),
          width: 200,
          height: 400,
        ),
      ),
    );
  }
}

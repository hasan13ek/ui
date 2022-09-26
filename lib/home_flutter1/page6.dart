import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('child demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green,border: Border.all(width: 2,color: Colors.red)),
          width: 300,
          height: 200,
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash screen example'),
      ),
      body: Container(
        child: Center(child: Text('Welcome To Home Page')),
      )
    );
  }
}

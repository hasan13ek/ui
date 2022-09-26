import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text('Salom'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 130,),
            Center(
              child: Container(decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only (topLeft: Radius.circular(150),
                      topRight: Radius.circular(150),
                      bottomRight: Radius.circular(150),
                      bottomLeft: Radius.circular(150)
                  )
              ),
                width: 240,
                height: 240,
              ),
            )
          ],
        ),
      ),

    );;
  }
}

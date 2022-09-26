import 'package:flutter/material.dart';

class shut extends StatefulWidget {
  const shut({Key? key}) : super(key: key);

  @override
  State<shut> createState() => _shutState();
}

class _shutState extends State<shut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lesson 3"),
        leading: Icon(Icons.adb),
      ),
      body: Column(
        children: [
          Column(
            children: [

                Expanded(flex: 3, child: Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.red,
                )
                ),
                Expanded(flex: 3, child: Container(
                  height: 40,
                  width:  double.infinity,
                  color: Colors.yellow,
                )
                ),
                Expanded(flex: 3, child: Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.greenAccent,
                )
                ),
              ],),
            ],
        //   )
        // ],
      ),
    );
  }
}

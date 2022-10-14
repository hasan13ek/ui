import 'package:first_lesson/home_flutter1/page2.dart';
import 'package:first_lesson/home_flutter3/payment_method.dart';
import 'package:first_lesson/home_flutter4/onboarding2.dart';
import 'package:flutter/material.dart';

class Tabbar_ extends StatefulWidget {
  const Tabbar_({Key? key}) : super(key: key);

  @override
  State<Tabbar_> createState() => _Tabbar_State();
}

class _Tabbar_State extends State<Tabbar_> {
  get tabs => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text("Lesson TapBar"),bottom: TabBar(tabs:[Tab(text: "Sera",),Tab(text: "Sera",),Tab(text: "Sera",)]),),
      body: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height *100,
      color: Colors.tealAccent,
      child: TabBarView(children: [Payment_method(),HomePage(),Onboarding2()]),
      ),
      ),
    );
  }
}

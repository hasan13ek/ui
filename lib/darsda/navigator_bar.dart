import 'package:first_lesson/home_flutter1/page2.dart';
import 'package:first_lesson/home_flutter4/onboarding.dart';
import 'package:first_lesson/home_flutter7/weather1.dart';
import 'package:first_lesson/home_flutter7/weather2.dart';
import 'package:flutter/material.dart';

class Navi extends StatefulWidget {
  const Navi({Key? key}) : super(key: key);

  @override
  State<Navi> createState() => _NaviState();
}
int sui = 0;
List<Widget> pages_ = [HomePage(),Weather(),Weather2(),Onboarding()];
class _NaviState extends State<Navi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lesson 9"),),
      body: pages_[sui],
      bottomNavigationBar:

      BottomNavigationBar(
        selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          onTap: (int index){
            setState(() {
              sui = index;
            });
          },
          currentIndex: sui,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.heart_broken),label: "like"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "account"),]),
    );
  }
}

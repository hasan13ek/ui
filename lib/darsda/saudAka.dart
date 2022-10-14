import 'package:flutter/material.dart';

class Saud extends StatefulWidget {
  const Saud({Key? key}) : super(key: key);

  @override
  State<Saud> createState() => _SaudState();
}

class _SaudState extends State<Saud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Collapsing Toolbar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Center(
          child: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
        ),
      ),
    );
  }
}
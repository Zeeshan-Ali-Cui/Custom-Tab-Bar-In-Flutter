import 'package:flutter/material.dart';
import 'package:homecard/main.dart';
import 'package:homecard/views/customtabbar.dart';
import 'Loginpagecard.dart';
import 'StackExample.dart';
class tabbareg extends StatefulWidget {
  const tabbareg({Key? key}) : super(key: key);

  @override
  State<tabbareg> createState() => _tabbaregState();
}

class _tabbaregState extends State<tabbareg> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text(" "),
          backgroundColor: Colors.cyan,
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.accessibility,color: Colors.red),text: " Tab 1"),
            Tab(icon: Icon(Icons.accessibility,color: Colors.red ),text: " Tab 2",),
            Tab(icon: Icon(Icons.accessibility,color: Colors.red),text: " Tab 3",),
            Tab(icon: Icon(Icons.accessibility,color: Colors.red),text: " Tab 4",)
          ]),
        ),
        body: TabBarView(
          children: [
            alertbox(),
            stackex(),
            MyHomePage(),
            cstab(),
          ],
        ),

      ),
    );
  }
}

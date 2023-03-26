import 'package:flutter/material.dart';

import '../main.dart';
import 'Loginpagecard.dart';
import 'StackExample.dart';
class cstab extends StatefulWidget {
  const cstab({Key? key}) : super(key: key);

  @override
  State<cstab> createState() => _cstabState();
}
class _cstabState extends State<cstab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // appBar: AppBar(title: Text(" custom tabbar"),),
        body:
        Column(
          children: [
            Container(
                    height: 50,
                    decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child:  TabBar(
                    indicator: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius:  BorderRadius.circular(30.0)
                    ) ,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                      tabs: const  [
                      Tab(text: 'Login',),
                      Tab(text: 'Stack',),
                      Tab(text: 'Tab',)
            ],
            ),
              ),
            Expanded(
              child: TabBarView(children: [
                alertbox(),
                stackex(),
                MyHomePage(),
              ]),
            )
            ],
        )
      ),

    );

  }
}

import 'package:flutter/material.dart';
import 'package:homecard/views/tababrexample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(),
      // home: const alertbox(),
      // home: const stackex(),
      home: const tabbareg(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orangeAccent,
        actions: [
          IconButton(
              icon: Icon(Icons.dehaze_sharp),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return  AlertDialog(
                          title: Text("Alert Box"),
                          content: StatefulBuilder(
                            builder: (BuildContext context, StateSetter setState) {
                              return Row(
                                children: [
                                  Container(
                                      child: TextButton(
                                    child: Text("$a"),
                                    onPressed: () {
                                      setState(() {
                                        a++;
                                      });
                                    },
                                  )),
                                ],
                              );
                            }
                          ),
                          actions: [
                            TextButton(
                              child: Text("Ok"),
                              onPressed: () {
                                Navigator.of(context)
                                    .pop();
                              },
                            ),
                          ],
                        );
                      });
              }),
        ],
      ),
      body: ListView.builder(
          itemCount: 8,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, i) {
            return Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Card(
                  margin: const EdgeInsets.only(left: 15.0, right: 15),
                  color: Colors.cyan,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(),
                            color: Colors.cyan),
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/128/3135/3135715.png"),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              // height: 89,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.horizontal(),
                                  color: Colors.cyan),
                              child: Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Text(
                                  " David Borg ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: Text(
                                  "Title: title",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.horizontal(),
                                          color: Colors.cyan),
                                      child: Padding(
                                        padding: EdgeInsets.all(18.0),
                                        child: Text(
                                          "50",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        overflow: TextOverflow.ellipsis,
                                        "Papularity",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.horizontal(),
                                          color: Colors.cyan),
                                      child: Padding(
                                        padding: EdgeInsets.all(18.0),
                                        child: Text(
                                          " 20 ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        overflow: TextOverflow.ellipsis,
                                        "Likes",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.horizontal(),
                                          color: Colors.cyan),
                                      child: Padding(
                                        padding: EdgeInsets.all(18.0),
                                        child: Text(
                                          " 5B ",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        overflow: TextOverflow.ellipsis,
                                        "Followed",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.horizontal(),
                                      color: Colors.cyan),
                                  child: Icon(Icons.keyboard_control,
                                      size: 30, color: Colors.white)),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.horizontal(),
                                    color: Colors.cyan),
                                child: Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Text(
                                    " 1 ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Ranking",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}

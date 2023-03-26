import 'package:flutter/material.dart';
class alertbox extends StatefulWidget {
  const alertbox({Key? key}) : super(key: key);

  @override
  State<alertbox> createState() => _alertboxState();
}

class _alertboxState extends State<alertbox> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body:   Center(
        child: Card(
          elevation: 30,
          shadowColor: Colors.black,
          color: Colors.greenAccent,
          child: SizedBox(
            width: 400,
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                  Container(
                    height: 100,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: (
                          TextField (
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.blueAccent),
                                ),
                                labelText: 'Enter Name',
                            ),
                          )
                      ),
                    )
                  ),
                    Container(
                        height: 100,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: (
                              TextField (
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Colors.blueAccent),
                                  ),
                                  labelText: 'Password',
                                ),
                              )
                          ),
                        )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class stackex extends StatefulWidget {
  const stackex({Key? key}) : super(key: key);

  @override
  State<stackex> createState() => _stackexState();
}

class _stackexState extends State<stackex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Stack Example"),
      backgroundColor: Colors.cyan,),
      body:
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.width*2,
            width: MediaQuery.of(context).size.height,
            child: (
            Image(image: NetworkImage("https://w0.peakpx.com/wallpaper/327/452/HD-wallpaper-dark-anime-guy-phone.jpg",
            ))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.7,
            width: MediaQuery.of(context).size.width*0.9,
            alignment: Alignment.bottomRight,
            child: (
                Icon(Icons.favorite_outlined,
                  color: Colors.red,
                  size: 40.0,)
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.72,
            width: MediaQuery.of(context).size.width*0.9,
            alignment: Alignment.bottomRight,
            child: (
                Text("Like", style: TextStyle(color: Colors.white ))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.8,
            width: MediaQuery.of(context).size.width*0.9,
            alignment: Alignment.bottomRight,
            child: (
                Icon(Icons.share,
                color: Colors.white,
                size: 40.0,)
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.82,
            width: MediaQuery.of(context).size.width*0.9,
            alignment: Alignment.bottomRight,
            child: (
                Text("Share", style: TextStyle(color: Colors.white ))
            ),
          ),

        ],
      ),
    );
    
  }
}

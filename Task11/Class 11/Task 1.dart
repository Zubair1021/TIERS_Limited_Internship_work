import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxNesting extends StatelessWidget {
  const BoxNesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nesting of Boxes',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

                  Stack(
      children: <Widget>[
      Container(
      width: 300,
      height: 300,
      color: Colors.red,
      ),
        Positioned( top:26, left:26,child:Container(
      width: 250,
      height: 250,
      color: Colors.green,
      )),
        Positioned( top:76, left:76, child:Container(
      width: 150,
      height: 150,
      color: Colors.blue,
      )),
        Positioned( top:100, left:100, child:Container(
      width: 100,
      height: 100,
      color: Colors.orangeAccent,
      )),
        Positioned( top:125, left:125, child:Container(
      width: 50,
      height: 50,
      color: Colors.black,
      )),
      ],
      )
          ],
        ),
      ),
    );
  }
}



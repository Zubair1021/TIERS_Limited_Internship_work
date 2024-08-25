import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Colors.black26,
        title: Text("Welcome! to My App",style: TextStyle(letterSpacing: 2,fontSize: 25,color: Colors.white),),
        actions: [
          TextButton(onPressed: () {},
              child: const Text("Gmail", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),) ),
          TextButton(onPressed: () {},
              child: const Text("Images", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),) ),
          TextButton(onPressed: () {},
              child:  IconButton(onPressed: () {}, icon:Image.asset("assets/Images/more-apps.png",color: Colors.deepOrangeAccent,)) ),

        ],),
      drawer: const drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Images/android-logo.png"),
            SizedBox(height: 15,),
            Text("Android App Home Page",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}


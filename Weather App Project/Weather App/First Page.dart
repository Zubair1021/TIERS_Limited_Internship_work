import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MainScreen.dart';

const Textcolor=Color.fromRGBO(18, 38, 32, 1.0);
const Btn_Background=Color.fromRGBO(28, 86, 130, 1.0);
const Pra_Color=Color.fromRGBO(231, 242, 248, 1.0);

class First_Page extends StatelessWidget {
  const First_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
        child: Text("AccuWeather",style: TextStyle(color: Textcolor,fontSize: 80,fontWeight: FontWeight.w500,fontFamily: 'Tinos' ),),
    ),
    Container(
    child: Text("Stay ahead of the weather with over accurate forecaste ",style: TextStyle(color: Colors.white,fontFamily: 'Tinos',fontSize: 22,letterSpacing: 2,fontWeight: FontWeight.bold),),
    ),
    Container(
      width: 370,
      height: 370,
      child: Image.asset("lib/assets/Images/Animatedgif.gif"),
    ),
    Container(
    child: ElevatedButton(onPressed: () async {
      showLoaderDialog(context); // Show the loader dialog
      await Future.delayed(Duration(seconds: 2));
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  WeatherScreen() ));
    }, child: Text("Get Started",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Btn_Background),padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 150,vertical:
    20))),),
    )


    ],
    ),
       )
    );
  }
}


Future<void> showLoaderDialog(BuildContext context) async {
  await showDialog(
    context: context,
    barrierDismissible: false, // Prevents the dialog from being dismissed by tapping outside
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Loading...", style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ),
      );
    },
  );
}


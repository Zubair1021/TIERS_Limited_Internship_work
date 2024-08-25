import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterpractice_2/Project%201/Login%20Screen.dart';


Color neonBlue = Color.fromRGBO(98, 107, 251, 1);

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Shopsie",style: TextStyle(color: neonBlue,fontSize: 80,fontWeight: FontWeight.w500,fontFamily: 'Tinos' ),),
            ),
            Container(
              margin:EdgeInsets.only(top:20) ,
              child: Text("The best way to style your life.",style: TextStyle(color: CupertinoColors.systemGrey2,fontFamily: 'Tinos',fontSize: 20),),
            ),
            Container(
              margin: EdgeInsets.only(top:200),
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen() ));
              }, child: Text("Get Started",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),style: ButtonStyle( backgroundColor: MaterialStateProperty.all(neonBlue),padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 150,vertical:
              20))),),
            )

            
          ],
        ),
      ),
    );
  }
}

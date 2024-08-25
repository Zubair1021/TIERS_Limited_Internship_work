import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Main Screen.dart';
bool _isPasswordVisible = true;

Color neonBlue = Color.fromRGBO(98, 107, 251, 1);
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text("Welcome back! Glad to \n see you,Again!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            // SizedBox(width:10),
            Container(
              child: Column(

                children: [
                   Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                    Container(
                      width: 300,
                      height: 40,
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your email",hintStyle: TextStyle(color: CupertinoColors.systemGrey2,),
                            enabledBorder: InputBorder.none,
                            focusedBorder: OutlineInputBorder()
                        ),
                      ),
                    ),
                         SizedBox(height:10),
                  Container(
                    width: 300,
                    height: 40,
                    margin: EdgeInsets.only(bottom: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your password",hintStyle: TextStyle(color: CupertinoColors.systemGrey2,),
                          enabledBorder: InputBorder.none,
                          focusedBorder: OutlineInputBorder(),
                        suffixIcon:IconButton( // Add an eye icon
                        icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off,color: CupertinoColors.systemGrey2,),
                        onPressed: () { }
                    ),
                  ),
                    ),),
                         SizedBox(height:10),
                         Container(
                           // margin: EdgeInsets.only(top:200),
                           child: ElevatedButton(onPressed: () {
                             Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const MainScreen() ));
                           }, child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18),),style: ButtonStyle( backgroundColor: MaterialStateProperty.all(neonBlue),padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 140,vertical:
                           15)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),),),
                         ),
                         SizedBox(height:25),
                         Container(
                           margin: EdgeInsets.only(bottom: 10),
                           child:  Text(
                             'Or Login with',
                             textAlign: TextAlign.center,
                             style: TextStyle(fontSize: 15,color: CupertinoColors.systemGrey2,fontWeight: FontWeight.bold),
                           ),
                         ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(

                          child:
                          ElevatedButton(onPressed: () {},
                            child:  IconButton(onPressed: () {}, icon:Image.asset("assets/Images/facebook.png",)),
                              style: ButtonStyle( padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 80,vertical:
                              20)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))))),
                        ),
                        Container(
                          margin:EdgeInsets.only(left: 20),
                          child:
                          ElevatedButton(onPressed: () {},
                              child:  IconButton(onPressed: () {}, icon:Image.asset("assets/Images/google.png",)),
                              style: ButtonStyle( padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 80,vertical:
                              20)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))))),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin:EdgeInsets.only(top: 30),
                          child: Text(
                            'Don\'t have an account?',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(top: 30),
                          child: TextButton(onPressed: () {  }, child: Text("Register Now",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: neonBlue),),),
                        )
                      ],
                    ),
                  )
  ]
                     ),

                   ),
                ],
              ),

            ),

          ],
        ),
      ),
    );
  }


}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class aboutpage extends StatelessWidget {
  const aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.blue,
        title: Text("About me!" ,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400),),
        actions: [
          TextButton.icon(onPressed: (){}, label: Icon(Icons.search,color: Colors.white,),),
          TextButton.icon(onPressed: (){}, label: Icon(Icons.account_circle_outlined,color: Colors.white,),),
        ],
      ),
      body: Center(
        child: Container(
          child: Text("This is the About page \n of the App",style: TextStyle(fontSize: 35),),
        ),
      ),
    );
  }
}

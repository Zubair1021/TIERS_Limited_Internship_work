import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class contactpage extends StatelessWidget {
  const contactpage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.deepPurple,
        title: Text("Contact with me!" ,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400),),
        actions: [
          TextButton.icon(onPressed: (){}, label: Icon(Icons.search,color: Colors.white,),),
          TextButton.icon(onPressed: (){}, label: Icon(Icons.phone,color: Colors.white,),),
          TextButton.icon(onPressed: (){}, label: Icon(Icons.help,color: Colors.white,),),
        ],
      ),
      body: Center(
        child: Container(
          child: Text("This is the Contact page \n of the App",style: TextStyle(fontSize: 35),),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color neonBlue = Color.fromRGBO(98, 107, 251, 1);

class Topspage extends StatelessWidget {
  const Topspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Tops",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 2),),
        centerTitle: true,
      ),
      body: GridView.count(crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Tops/Top1.jpg",width: 200,height: 180,),
                Text("Blouse Top",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 7",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Tops/Top2.jpg",width: 200,height: 180,),
                Text("White Flower Design",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 11.3",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Tops/Top3.jpg",width: 200,height: 180,),
                Text("Denim-Effect Top",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 14",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Tops/Top4.jpg",width: 200,height: 180,),
                Text("White Simple",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 11.4",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Tops/Top5.jpg",width: 200,height: 180,),
                Text("Black Plain Top",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 11",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),




        ],
      ),
    );
  }
}

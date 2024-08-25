import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color neonBlue = Color.fromRGBO(98, 107, 251, 1);

class Heelspage extends StatelessWidget {
  const Heelspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Heels",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 2),),
        centerTitle: true,
      ),
      body: GridView.count(crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Heels/Heel1.jpg",width: 200,height: 180,),
                Text("Offwhite Heel",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 12",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Heels/Heel2.jpg",width: 200,height: 180,),
                Text("White Comfortable Heel",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Heels/Heel3.jpg",width: 200,height: 180,),
                Text("Gray Shade Heel",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Heels/Heel4.jpg",width: 200,height: 180,),
                Text("Light Purple",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 16.4",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Heels/Heel5.jpg",width: 200,height: 180,),
                Text("Light Pink",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 16",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Heels/Heel6.jpg",width: 200,height: 180,),
                Text("Plane Radish",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 9.5",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Heels/Heel7.jpg",width: 200,height: 180,),
                Text("Plane Skin",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 10",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),

        ],
      ),
    );
  }
}

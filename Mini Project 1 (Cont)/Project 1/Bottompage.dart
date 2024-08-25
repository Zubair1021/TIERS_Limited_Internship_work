import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color neonBlue = Color.fromRGBO(98, 107, 251, 1);

class Bottompage extends StatelessWidget {
  const Bottompage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Bottoms",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 2),),
        centerTitle: true,
      ),
      body: GridView.count(crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Bottoms/Bottom1.jpg",width: 200,height: 180,),
                Text("Sporty Zipper Shorts",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Bottoms/Bottom2.jpg",width: 200,height: 180,),
                Text("Game Changer Trourser",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Bottoms/Bottom3.jpg",width: 200,height: 180,),
                Text("Cherry Plazo Bottom",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Bottoms/Bottom4.jpg",width: 200,height: 180,),
                Text("Yellow Striped Bottom",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 12.4",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Bottoms/Bottom5.jpg",width: 200,height: 180,),
                Text("Zoey Striped Bottom",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 11",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Bottoms/Bottom6.jpg",width: 200,height: 180,),
                Text("Printed Clustoesd Bottom",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 8.5",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Bottoms/Bottom7.jpg",width: 200,height: 180,),
                Text("Ayla Bell Bottom",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 8",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Bottoms/Bottom8.jpg",width: 200,height: 180,),
                Text("Bell Bottom ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 10.4",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Bottoms/Bottom9.jpg",width: 200,height: 180,),
                Text("White Chikankari  Bottom",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 15",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Bottoms/Bottom10.jpg",width: 200,height: 180,),
                Text("Natalia Bell Bottom",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 14",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),



        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color neonBlue = Color.fromRGBO(98, 107, 251, 1);

class Shoespage extends StatelessWidget {
  const Shoespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Shoes",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 2),),
        centerTitle: true,
      ),
      body: GridView.count(crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Shoes/Shoe1.jpg",width: 200,height: 180,),
                Text("Sporty Casual Shoe",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 10",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Shoes/Shoe2.jpg",width: 200,height: 180,),
                Text("Grey Glossy Shoe",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Shoes/Shoe3.jpg",width: 200,height: 180,),
                Text("Green Sparking Casual",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Shoes/Shoe4.jpg",width: 200,height: 180,),
                Text("Women Denim Shoe",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 13.4",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Shoes/Shoe5.jpg",width: 200,height: 180,),
                Text("White Sneakers",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Shoes/Shoe6.jpg",width: 200,height: 180,),
                Text("Black Sneakers",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Shoes/Shoe7.jpg",width: 200,height: 180,),
                Text("Rainbow Sneakers",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Shoes/Shoe8.jpg",width: 200,height: 180,),
                Text("Black Gray Joggers",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 18.4",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),




        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color neonBlue = Color.fromRGBO(98, 107, 251, 1);

class Shirtpage extends StatelessWidget {
  const Shirtpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("T-Shirts",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 2),),
        centerTitle: true,
      ),
      body: GridView.count(crossAxisCount: 2,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/Images/Shirt1.jpg",width: 200,height: 180,),
              Text("Blue Attractive Shirt",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
              Image.asset("assets/Images/Shirt2.jpg",width: 200,height: 180,),
              Text("Red plane Shirt",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
              Image.asset("assets/Images/Shirt3.jpg",width: 200,height: 180,),
              Text("Carrom Shirt",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
              Image.asset("assets/Images/Shirt4.jpg",width: 200,height: 180,),
              Text("Aqua Plane Shirt",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
              Image.asset("assets/Images/Shirt5.jpg",width: 200,height: 180,),
              Text("White Black Chaker",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
              Image.asset("assets/Images/Shirt6.jpg",width: 200,height: 180,),
              Text("Women Black Shirt",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
              Image.asset("assets/Images/Shirt7.jpg",width: 200,height: 180,),
              Text("Black Shirt",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
              Image.asset("assets/Images/Shirt8.jpg",width: 200,height: 180,),
              Text("Brown Attractive Shirt",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
              Image.asset("assets/Images/Shirt3.jpg",width: 200,height: 180,),
              Text("White Black Chaker",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
              Image.asset("assets/Images/Shirt5.jpg",width: 200,height: 180,),
              Text("Carrom Shirt",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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

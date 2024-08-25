import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color neonBlue = Color.fromRGBO(98, 107, 251, 1);

class Accessoriespage extends StatelessWidget {
  const Accessoriespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Accessories",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 2),),
        centerTitle: true,
      ),
      body: GridView.count(crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Accessories/Access1.jpg",width: 200,height: 180,),
                Text("Black Braslate",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Accessories/Access2.jpg",width: 200,height: 180,),
                Text("Golden Braslate",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Accessories/Access3.jpg",width: 200,height: 180,),
                Text("Black Wrist Watch",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Accessories/Access4.jpg",width: 200,height: 180,),
                Text("Pure Golden Braslate",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
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
                Image.asset("assets/Images/Accessories/Access5.jpg",width: 200,height: 180,),
                Text("Black Cap",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 6",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width:250,height: 600,decoration:BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/Images/Accessories/Access6.jpg",width: 200,height: 180,),
                Text("White Black Cap",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 5,),
                Text("\$ 8.5",style: TextStyle(color: neonBlue,fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),),
          ),




        ],
      ),
    );
  }
}

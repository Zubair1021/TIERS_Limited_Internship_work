import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpractice_2/Project%201/Accessoriespage.dart';
import 'package:flutterpractice_2/Project%201/Bottompage.dart';
import 'package:flutterpractice_2/Project%201/Heelspage.dart';
import 'package:flutterpractice_2/Project%201/Shirtpage.dart';
import 'package:flutterpractice_2/Project%201/Shoespage.dart';
import 'package:flutterpractice_2/Project%201/Topspage.dart';

class AllCategoriespage extends StatelessWidget {
  const AllCategoriespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("All categories",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 2),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left:22),
              height: 50,
              width: 450,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10)
              ),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image.asset("assets/Images/tshirt-icon.png",width: 70,height: 70,),
                  SizedBox(width: 60,),
                  Text("Branded Shirts",style: TextStyle(fontSize: 24,color: Colors.black),),
                  SizedBox(width: 100,),
                  IconButton(
                    icon: Icon(Icons.navigate_next), // Use any icon you prefer
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Shirtpage()),
                  );
                })
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left:22),
              height: 50,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image.asset("assets/Images/shoe-icon.png",width: 70,height: 70,),
                  SizedBox(width: 60,),
                  Text("Shoes & Sneakers",style: TextStyle(fontSize: 24,color: Colors.black),),
                  SizedBox(width: 65,),
                  IconButton(
                      icon: Icon(Icons.navigate_next), // Use any icon you prefer
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Shoespage()),
                        );
                      })
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left:22),
              height: 50,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image.asset("assets/Images/Top-icon.png",width: 70,height: 70,),
                  SizedBox(width: 60,),
                  Text("Top Wear",style: TextStyle(fontSize: 24,color: Colors.black),),
                  SizedBox(width: 155,),
                  IconButton(
                      icon: Icon(Icons.navigate_next), // Use any icon you prefer
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Topspage()),
                        );
                      })
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left:22),
              height: 50,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image.asset("assets/Images/heels-icon.png",width: 70,height: 70,),
                  SizedBox(width: 60,),
                  Text("Women Heels",style: TextStyle(fontSize: 24,color: Colors.black),),
                  SizedBox(width: 108,),
                  IconButton(
                      icon: Icon(Icons.navigate_next), // Use any icon you prefer
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Heelspage()),
                        );
                      })
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left:22),
              height: 50,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image.asset("assets/Images/bottoms-icon.png",width: 70,height: 70,),
                  SizedBox(width: 60,),
                  Text("Bottoms Wear",style: TextStyle(fontSize: 24,color: Colors.black),),
                  SizedBox(width: 100,),
                  IconButton(
                      icon: Icon(Icons.navigate_next), // Use any icon you prefer
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Bottompage()),
                        );
                      })
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left:22),
              height: 50,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/Images/Acces-icom.png",width: 70,height: 70,),
                  SizedBox(width: 60,),
                  Text("Accessories",style: TextStyle(fontSize: 24,color: Colors.black),),
                  SizedBox(width: 120,),
                  IconButton(
                      icon: Icon(Icons.navigate_next), // Use any icon you prefer
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Accessoriespage()),
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpractice_2/Project%201/Main_Drawer.dart';

Color neonBlue = Color.fromRGBO(98, 107, 251, 1);

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        title: Text(
          "Shopsie",

          style: TextStyle(
            color: neonBlue,
            fontFamily: "Tinos",
            fontSize: 30,
            fontWeight: FontWeight.bold

          ),
        ),
        centerTitle: true,

        actions: [
          TextButton(
            onPressed: () {},
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/Images/search.png"),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/Images/cart.png"),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/Images/user.png"),
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),

      body:Scrollview(),


    );
  }
}
class Scrollview extends StatelessWidget {
  const Scrollview({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: [

            Image.asset("assets/Images/fash1.jpg"),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: CupertinoColors.lightBackgroundGray,
                  child: ElevatedButton(onPressed: () {  }, child: Text("Shop Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 2),),style:ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero)),padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20))),),
                ),
                Image.asset("assets/Images/fash2.jpg"),
              ]
            )
          ),
          Container(
            child: Column(
              children: [
                Container(
                    height:200,
                    width: MediaQuery.of(context).size.width,
                  child:Center(
                  child:Text("Trending Now",style: TextStyle(letterSpacing: 3,fontSize: 25 ), )
                  )
                ),
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                        child:ElevatedButton(onPressed: () {  }, child: Text("All",style: TextStyle(color: Colors.white,fontSize: 20),),style: ButtonStyle( backgroundColor: MaterialStateProperty.all(neonBlue),padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:
                        8)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),),)
                        ) ,
                        SizedBox(width: 20),
                        Container(
                            child:ElevatedButton(onPressed: () {  }, child: Text("Dresses",style: TextStyle(color: Colors.black,fontSize: 20),),style: ButtonStyle( backgroundColor: MaterialStateProperty.all(CupertinoColors.lightBackgroundGray),padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:
                            8)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),),)
                        ) ,
                        SizedBox(width: 20),
                        Container(
                            child:ElevatedButton(onPressed: () {  }, child: Text("Accessories",style: TextStyle(color: Colors.black,fontSize: 20),),style: ButtonStyle( backgroundColor: MaterialStateProperty.all(CupertinoColors.lightBackgroundGray),padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:
                            8)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),),)
                        ) ,
                        SizedBox(width: 20),
                        Container(
                            child:ElevatedButton(onPressed: () {  }, child: Text("Clothes",style: TextStyle(color: Colors.black,fontSize: 20),),style: ButtonStyle( backgroundColor: MaterialStateProperty.all(CupertinoColors.lightBackgroundGray),padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20,vertical:
                            8)),shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),),)
                        ) ,
                      ] ),
                  ),
                ),
                SizedBox(height: 30),

                      ],
                    ),
                  ),
              ],
            ),
          );
  }
}


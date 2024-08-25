import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpractice_2/Project%201/Accessoriespage.dart';
import 'package:flutterpractice_2/Project%201/All%20Categories.dart';
import 'package:flutterpractice_2/Project%201/Bottompage.dart';
import 'package:flutterpractice_2/Project%201/Heelspage.dart';
import 'package:flutterpractice_2/Project%201/Shirtpage.dart';
import 'package:flutterpractice_2/Project%201/Shoespage.dart';
import 'package:flutterpractice_2/Project%201/Topspage.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(children: buildMenuItems(context)),

    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final Set<String> menuTitles = {"Edit Profile", "Username", "E-mail","Password"};
    final Set<String> menuTitles2 = {"All categories", "Shirts", "Bottoms","Shoes","Heels","Accessories","Tops"};
    List<Widget> menuItems = [];


    menuItems.add(const DrawerHeader(

      decoration: BoxDecoration(
        color: Colors.white,
        // image: DecorationImage(
        //   image: NetworkImage(
        //     "assets/Images/drawer-bg.jpeg",
        //   ),
        //   fit: BoxFit.fill,
        // ),
      ),
      child: Row(

        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/Images/me.png'),
          ),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Muhammad Zubair",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:18),),
              SizedBox(height: 5,),
              Text("Zubairjaved1014@gmail.com",style: TextStyle(color:Colors.blueGrey,fontSize:12),),
            ],

          )

        ],
      ),
    ));
    menuItems.add(Container(margin: EdgeInsets.only(top:10,left:20,bottom: 10,),   child:Text("Information",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,),)));
    menuTitles.forEach((element) {
      IconData iconData;
      // Declare a variable to hold the icon data
      switch (element) { // Determine the icon based on the element
        case 'Edit Profile':

          iconData = Icons.edit;
          break;
        case 'Username':
          iconData = Icons.person;
          break;
        case 'E-mail':
          iconData = Icons.email;
          break;
        case 'Password':
          iconData = Icons.lock;
          break;
        default:
          iconData = Icons.error; // Default icon if none matches
      }
      menuItems.add(

        ListTile(
            dense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 5),
          leading: Icon(iconData),
            title: Padding(
              padding: EdgeInsets.only(left: 20), // Adjust the left padding as needed
              child: Text(element, style: TextStyle(fontSize: 14,color: Colors.black)),
            ),
          // focusColor: CupertinoColors.systemGrey2,

          onTap: () {
            Widget screen = Container();
            switch (element) {
              // case 'Home':
              //   // screen = const Mainpage();
              //   break;
              // case 'About':
              //   // screen = const about();
              //   break;
              // case 'Contacts':
                // screen = const contact();
                // break;
              default:
            }
            Navigator.of(context).pop();
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => screen)
            );
          },
        ),
      );




    });
    menuItems.add(Divider(color: Colors.grey.shade400,));
    menuItems.add(Container(margin: EdgeInsets.only(top:10,left:20,bottom: 10,),   child:Text("Categories",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black,),)));
    menuTitles2.forEach((element) {
      Widget iconWidget; // Use Widget instead of IconData

      switch (element) {
        case 'All categories':
          iconWidget = Icon(Icons.category);
          break;
        case 'Shirts':
          iconWidget = Image.asset("assets/Images/tshirt-icon.png", width: 20);
          break;
        case 'Bottoms':
          iconWidget = Image.asset("assets/Images/bottoms-icon.png", width: 20);
          break;
        case 'Shoes':
          iconWidget = Image.asset("assets/Images/shoe-icon.png", width: 20);
          break;
        case 'Heels':
          iconWidget = Image.asset("assets/Images/heels-icon.png", width: 20);
          break;
        case 'Accessories':
          iconWidget = Icon(Icons.access_alarm);
          break;
        case 'Tops':
          iconWidget = Image.asset("assets/Images/Top-icon.png", width: 20);
          break;

        default:
          iconWidget = Icon(Icons.error); // Default case
      }

      menuItems.add(
        ListTile(
          dense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 5),
          leading: iconWidget,
          title: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(element, style: TextStyle(fontSize: 14,color: Colors.black)),
          ),
          onTap: () {
            Widget screen = Container();
            switch (element) {
            case 'Shirts':
              screen = const Shirtpage();
              break;
            case 'Bottoms':
              screen = const Bottompage();
              break;
            case 'Shoes':
            screen = const Shoespage();
            break;
              case 'Heels':
                screen = const Heelspage();
                break;
              case 'Accessories':
                screen = const Accessoriespage();
                break;
              case 'Tops':
                screen = const Topspage();
                break;
              case 'All categories':
                screen = const AllCategoriespage();
                break;
              default:
            }// Placeholder widget
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
          },
        ),
      );
    });


    return menuItems;
  }
}

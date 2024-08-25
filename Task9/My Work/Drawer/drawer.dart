import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Mainpage.dart';
import 'about.dart';
import 'contact.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(children: buildMenuItems(context)),

    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final Set<String> menuTitles = {"Home", "About", "Contacts"};
    List<Widget> menuItems = [];
    menuItems.add(const DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        image: DecorationImage(
          image: NetworkImage(
            "assets/Images/drawer-bg.jpeg",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Android App ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20),)
        ],
      ),
    ));
    menuTitles.forEach((element) {
      IconData iconData; // Declare a variable to hold the icon data
      switch (element) { // Determine the icon based on the element
        case 'Home':
          iconData = Icons.home;
          break;
        case 'About':
          iconData = Icons.info_outline;
          break;
        case 'Contacts':
          iconData = Icons.contacts;
          break;
        default:
          iconData = Icons.error; // Default icon if none matches
      }
      menuItems.add(

        ListTile(
          leading: Icon(iconData), // Add the leading property here with the determined icon
          title: Text(element, style: TextStyle(fontSize: 16,color: CupertinoColors.systemGrey)),
          onTap: () {
            Widget screen = Container();
            switch (element) {
              case 'Home':
                screen = const Mainpage();
                break;
              case 'About':
                screen = const about();
                break;
              case 'Contacts':
                screen = const contact();
                break;
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
    return menuItems;
  }


}



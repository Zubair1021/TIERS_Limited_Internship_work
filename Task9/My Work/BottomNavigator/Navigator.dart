import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Aboutme.dart';
import 'contactme.dart';
import 'homepage.dart';

class bottonnav extends StatelessWidget {
  const bottonnav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

        currentIndex: 0,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.red,), label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Contacts"),

    ],
    onTap: (index) {
      switch (index) {
        case 0:
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const homepage())
          );
          break;
        case 1:
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const aboutpage())
          );
          break;
        case 2:
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const contactpage())
          );
          break;
        default:
          print("Error in Navigation Bar");
      }
    },
    );
    }

  }


import 'package:demo_app/Models/NotificationCardModel.dart';
import 'package:demo_app/Pages/BottomNavigationBarItems/Home.dart';
import 'package:demo_app/Pages/BottomNavigationBarItems/Profile.dart';
import 'package:demo_app/Pages/RegisterPage.dart';
import 'package:demo_app/Widgets/HotelCard.dart';
import 'package:demo_app/Widgets/NotificationCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BottomNavigationBarItems/Notifications.dart';
import 'LoginPage.dart';

class HomePage extends StatefulWidget{

  @override
  _HomePage createState() => _HomePage();

}
class _HomePage extends State<HomePage>{

  var currIndex = 0;

  var screens = [
    Home(),
    Notifications(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Momentum',textAlign: TextAlign.center,),
        toolbarHeight: 80,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(800, 120)
            )
        ),
      ),
      body: screens[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        onTap: (index) => setState(() => currIndex = index),
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
              backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.red
          ),


        ],
      ),
    );
  }

}

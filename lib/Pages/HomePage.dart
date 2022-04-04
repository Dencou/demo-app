import 'package:demo_app/Models/NotificationCardModel.dart';
import 'package:demo_app/Pages/BottomNavigationBarItems/Home.dart';
import 'package:demo_app/Pages/BottomNavigationBarItems/Profile.dart';
import 'package:demo_app/Pages/RegisterPage.dart';
import 'package:demo_app/Services/FeedbackService.dart';
import 'package:demo_app/Widgets/AppBarW.dart';
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

  //default page for the BottomNavigationBar
  var currIndex = 0;

  //set the pages for the bottom navigation bar
  var screens = [
    Home(),
    Notifications(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {

    feedbackService.getFeedbacks();

    return Scaffold(

      appBar:AppBarW(),
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
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
          ),



        ],
      ),
    );
  }

}

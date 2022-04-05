import 'package:demo_app/Pages/DetailedHotelInfoPage.dart';
import 'package:demo_app/Pages/FeedbackPage.dart';
import 'package:demo_app/Pages/HomePage.dart';
import 'package:demo_app/Pages/PaymentPage.dart';
import 'package:demo_app/Pages/SavedHotelsPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Pages/LoginPage.dart';
import 'Widgets/UsersFeedback.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Title Test',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
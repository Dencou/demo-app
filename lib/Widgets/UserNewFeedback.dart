import 'package:demo_app/Pages/FeedbackPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class UserNewFeedback extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            Text('Want to write a feedback?'),
            ElevatedButton(onPressed: ()=>{Get.to(FeedbackPage())}, child: Text('Give a feedback',style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(30),
                primary: Colors.white,
                shadowColor: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),)

            ),],
        )
          /*T*/

      ),
    );
  }

}
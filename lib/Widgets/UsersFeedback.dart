import 'dart:async';

import 'package:demo_app/Models/FeedbackModel.dart';
import 'package:demo_app/Widgets/RatinBarw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:carousel_slider/carousel_slider.dart';


class UsersFeedback extends StatelessWidget{

  FeedbackModel feedback;
  UsersFeedback(this.feedback);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16,),

          SizedBox(height: 6,),

          Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      spreadRadius: 2,
                      offset: Offset(1,2),
                      blurRadius: 2,

                    )]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                      children:[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHlIC6mj9KXGnVloMBpbZ5MULyumav2TarjA&usqp=CAU',height: 40, width: 40,fit: BoxFit.fill,),
                          ),
                        ),
                        Text(feedback.userName,style: GoogleFonts.inter(fontWeight: FontWeight.bold),),
                      ]),

                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(feedback.message,style: GoogleFonts.inter()),
                  ),


                ],
              ),

            ) ,

        ],
      );


  }


}
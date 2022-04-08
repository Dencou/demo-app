import 'package:demo_app/Pages/HomePage.dart';
import 'package:demo_app/Services/FeedbackService.dart';
import 'package:demo_app/Services/HotelService.dart';
import 'package:demo_app/StateStores/feedback-stores.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/StateStores/user-stores.dart';
import 'package:demo_app/Widgets/AppBarW.dart';
import 'package:demo_app/Widgets/RatinBarw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class FeedbackPage extends StatefulWidget{
  @override
  _FeedbackPage createState() => _FeedbackPage();

}
class _FeedbackPage extends State<FeedbackPage>{
  TextEditingController message = TextEditingController();

  void sumbit(){
    //store the rating
    var rating = feedbackStore.rating.toInt();
    //create feedback
    feedbackService.createFeedback(rating:rating.toInt(),message: message.text,hotelid: hotelStores.currHotel, userid: userStores.id);
    setState(() {

    });
    Get.snackbar("Thanks","thanks for your feedback in ${hotelStores.name}");
    Get.to(HomePage());


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarW(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Image.network('https://learningpark.io/wp-content/uploads/2018/12/evaluacion-de-competencias-con-gamificacion-4.jpg',fit: BoxFit.fill,),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                      )],

                  ),


                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Please rate your experience'),
                      SizedBox(height: 10,),
                      RatingBarw(itemSize: 40,initialRating: 3,itemCount: 5,),
                      SizedBox(height: 12,),
                      Text('Aditional comments'),
                      SizedBox(height: 8,),
                      Container(
                        width: double.infinity,

                        child: TextField(
                          controller: message,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.keyboard),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey.shade300,

                          ),
                        ),

                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: ()=>{sumbit()}, child: Text('Submit feedback', style: TextStyle(color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(40),
                          primary: Colors.deepPurpleAccent,
                          shadowColor: Colors.deepPurple.shade800,
                          elevation: 10,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),

                        ),),
                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      )

    );
  }

}
import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:demo_app/Pages/DetailedHotelInfoPage.dart';
import 'package:demo_app/Services/FeedbackService.dart';
import 'package:demo_app/Services/HotelService.dart';
import 'package:demo_app/StateStores/feedback-stores.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/Widgets/RatinBarw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelCard extends StatelessWidget{

  HotelCardModel hotelCard;
  HotelCard(this.hotelCard);

  Future<void> tap() async {
    //hotelStores.setCurrHotel(hotelCard.id);
    hotelStores.setCurrHotel(hotelCard.id);
    print('getting feedbacks');
    await feedbackService.getFeedbacks();

    Get.to(DetailedHotelInfoPage());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 16),
    child:Column(
      children: [
        GestureDetector(
          onTap: ()=>{tap()},
          child: Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                  )],
              ),
              child:Column(
                children: [
                  Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                        child: Image.network(hotelCard.bannerImage, fit: BoxFit.fill,),
                      )
                  ),
                  Container(
                      width: double.infinity,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(hotelCard.name,style: GoogleFonts.exo(textStyle: TextStyle(fontSize: 16)),),
                                Text(hotelCard.country + " - " + hotelCard.city,style: GoogleFonts.exo(textStyle: TextStyle(color: Colors.grey)),),
                                SizedBox(height: 5,),
                                RatingBarw(itemCount: 5,itemSize: 20,initialRating: 3,),
                                SizedBox(height: 5,),


                              ],
                            ),
                            Text(hotelCard.price),
                          ],
                        ),
                      )





                  )],
              )

          ),
        )


      ],
    )
    );
  }

}
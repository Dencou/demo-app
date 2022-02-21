import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelCard extends StatelessWidget{

  HotelCardModel hotelCard;
  HotelCard(this.hotelCard);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 16),
    child:Column(
      children: [
        Container(
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
                          Text(hotelCard.location,style: GoogleFonts.exo(textStyle: TextStyle(color: Colors.grey)),),
                          SizedBox(height: 5,),
                          Container(
                            child: RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.yellow.shade800,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
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


      ],
    )
    );
  }

}
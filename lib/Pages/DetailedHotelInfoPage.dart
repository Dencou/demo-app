import 'package:demo_app/Models/FeedbackModel.dart';
import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:demo_app/Services/FeedbackService.dart';
import 'package:demo_app/StateStores/feedback-stores.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/Widgets/AppBarW.dart';
import 'package:demo_app/Widgets/Carousel.dart';
import 'package:demo_app/Widgets/UserNewFeedback.dart';
import 'package:demo_app/Widgets/UsersFeedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';



class DetailedHotelInfoPage extends StatelessWidget{




  final data = hotelStores.hotels.map((e) => e.id == hotelStores.currHotel);


  List<HotelCardModel> hotel = List<HotelCardModel>.from(hotelStores.hotels.where((element) => element.id == hotelStores.currHotel).map((e) =>
      HotelCardModel(name: e.name, bannerImage: e.bannerImage, country: e.country, price: e.price, extras: e.extras, city: e.city, id: e.id)
  ));
  List<FeedbackModel> feedback = List<FeedbackModel>.from(feedbackStore.feedbacks.where((element) => element.id.toString() == hotelStores.currHotel.toString()).map((e) =>
      FeedbackModel(e.userPhoto, e.userName, e.message, e.rating, e.id)
  ));


  submit(){

    var currhotel = hotelStores.hotels;




  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarW(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  width: double.infinity,
                  height: 240,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Carousel(content: Image.network(this.hotel[0].bannerImage), itemCount: 3,autoPlay: true,),
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingBar.builder(
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

                      },
                    ),
                    SizedBox(height: 10,),
                    Text('Hotel details',style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20),),
                    SizedBox(height: 4,),
                    Text(this.hotel[0].country + " - " + this.hotel[0].city,style: GoogleFonts.inter(),),
                    SizedBox(height: 4,),
                    Text(this.hotel[0].price,style: GoogleFonts.inter()),
                    SizedBox(height: 4,),
                    Text('Disabled friendly',style: GoogleFonts.inter()),
                    SizedBox(height: 4,),
                    Text("Extras",style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4,),
                    Text(this.hotel[0].extras),
                    SizedBox(height: 4,),
                    Text("Contact",style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4,),
                    Text('(0984) 314 588',style: GoogleFonts.inter()),
                    SizedBox(height: 20,),

                    ElevatedButton(onPressed: ()=>{feedbackService.getFeedbacks()}, child: Text('Order a room', style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(40),
                        primary: Colors.deepPurpleAccent,
                        shadowColor: Colors.deepPurple.shade800,
                        elevation: 10,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                      ),),



                    //Carousel(content: UsersFeedback(), itemCount: 3,autoPlay: false,),



                    SizedBox(height: 20,),
                    Text("See what guests think about:",style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 14),),
                    ...feedbackStore.feedbacks.map((e) => UsersFeedback(e)),
                    UserNewFeedback(),

                  ],
                ),
              ),
            ),
            //...feedbackStore.feedbacks.map((e) => UsersFeedback(e)),

          ],

        ),


      )


    );

  }

}
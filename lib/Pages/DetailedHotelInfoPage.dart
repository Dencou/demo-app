import 'package:demo_app/Widgets/UsersFeedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';



class DetailedHotelInfoPage extends StatelessWidget{
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
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(800, 120)
            ),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.deepPurple,Colors.blueAccent]),
          ),
        ),
      ),
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
                      boxShadow: const [BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(1,2),
                          color: Colors.black54
                      )]
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network('https://www.thespruce.com/thmb/Sa2UtD7YEpm40_gdHvYDXcRT1wk=/889x667/smart/filters:no_upscale()/23-Pitt-Road-Springfield-NJ-0088-Web-47236bb26d304e9188c2f8f5668e2990.jpg',fit: BoxFit.fill,),
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
                        print(rating);
                      },
                    ),
                    SizedBox(height: 10,),
                    Text('Hotel details',style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20),),
                    SizedBox(height: 4,),
                    Text('Brazil - Sao Paulo - St 200',style: GoogleFonts.inter(),),
                    SizedBox(height: 4,),
                    Text('200.000 USD p/night',style: GoogleFonts.inter()),
                    SizedBox(height: 4,),
                    Text('Disabled friendly',style: GoogleFonts.inter()),
                    SizedBox(height: 4,),
                    Text("Extras",style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4,),
                    Text('Wifi, pool, Soccer field, Tennis field, Padel Field, Breakfast included, Vegan Friendly, puto'),
                    SizedBox(height: 4,),
                    Text("Contact",style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4,),
                    Text('(0984) 314 588',style: GoogleFonts.inter()),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: ()=>{}, child: Text('Order a room', style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(40),
                        primary: Colors.deepPurpleAccent.shade200,
                        shadowColor: Colors.deepPurple.shade800,
                        elevation: 10,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                      ),),



                    CarouselSlider.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                          Container(
                            width: double.infinity,

                            child: UsersFeedback(),
                          ),
                      options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      aspectRatio: 2.0,
                      initialPage: 2,
                    ),
                    )


                  ],
                ),
              ),
            )

          ],
        ),
      )
    );
  }

}
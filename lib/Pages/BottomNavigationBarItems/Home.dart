import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:demo_app/Pages/DetailedHotelInfoPage.dart';
import 'package:demo_app/Services/HotelService.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/Widgets/HotelCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Home extends StatefulWidget{
  @override
  _Home createState() => _Home();
  }

  @override
  initState() {
    print('getting hotels........................................');
    hotelService.getHotels(false,false);


  }


class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {




    return Scaffold(

        body: ListView(
          children: [
            Column(
                children: [
                  ...hotelStores.hotels.map((e) => HotelCard(e)),
                ],

            ),


          ],
        )
    );
  }
}
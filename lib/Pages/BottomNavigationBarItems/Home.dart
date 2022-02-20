import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:demo_app/Pages/DetailedHotelInfoPage.dart';
import 'package:demo_app/Widgets/HotelCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: [
            GestureDetector(
              onTap: ()=>{Get.to(DetailedHotelInfoPage())},
              child: Column(
                children: [
                  HotelCard(HotelCardModel(bannerImage: 'https://www.thespruce.com/thmb/Sa2UtD7YEpm40_gdHvYDXcRT1wk=/889x667/smart/filters:no_upscale()/23-Pitt-Road-Springfield-NJ-0088-Web-47236bb26d304e9188c2f8f5668e2990.jpg',name: 'Hotel Motanha',location: 'Brasil - Sao Paulo',price: '200.000', rating: 3, extras: "Wifi area, Breakfast included, vegan friendly,Pool, Soccer Field, Tennis field, padel field,")),
                  HotelCard(HotelCardModel(bannerImage: 'https://www.thespruce.com/thmb/Sa2UtD7YEpm40_gdHvYDXcRT1wk=/889x667/smart/filters:no_upscale()/23-Pitt-Road-Springfield-NJ-0088-Web-47236bb26d304e9188c2f8f5668e2990.jpg',name: 'Hotel Fusika',location: 'Ukrania - Kiev',price: '620.600', rating: 2, extras: "Wifi area, Breakfast included, vegan friendly,Pool, Soccer Field, Tennis field, padel field,")),
                  HotelCard(HotelCardModel(bannerImage: 'https://www.thespruce.com/thmb/Sa2UtD7YEpm40_gdHvYDXcRT1wk=/889x667/smart/filters:no_upscale()/23-Pitt-Road-Springfield-NJ-0088-Web-47236bb26d304e9188c2f8f5668e2990.jpg',name: 'Roger Stand',location: 'Estados Unidos - Washington',price: '200.000', rating: 2, extras: "Wifi area, Breakfast included,vegan friendly,Pool, Soccer Field, Tennis field, padel field,")),

                ],
              ),
            )


          ],
        )
    );
  }

}
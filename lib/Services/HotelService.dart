import 'dart:convert';
import 'dart:developer';

import 'package:demo_app/Consts/SERVER_URL.dart';
import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:demo_app/Models/SavedHotelModel.dart';
import 'package:demo_app/Pages/HomePage.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/StateStores/saved-hotels-stores.dart';
import 'package:demo_app/StateStores/user-stores.dart';
import 'package:demo_app/Widgets/HotelCard.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class HotelService{

  getHotels(navigate, id) async{
    var url = Uri.parse('$SERVER_URLL/hotel/hotels');
    try{
      var response = await http.get(url);
      var responsejson = json.decode(response.body);
      //map the response to the HotelCardModel to save in the store
      List<HotelCardModel> hotel = List<HotelCardModel>.from(responsejson.map((hotel) =>
          HotelCardModel(
              id:hotel['id'],
              name: hotel['name'],
              extras: hotel['extras'],
              country: hotel['country'],
              city: hotel['city'],
              price: hotel['pricePerNight'],
              bannerImage: hotel['roomPhoto']
          )
      ));
      hotelStores.setDetails(hotel);
    }on Exception{
      Get.snackbar("Error", "Can't process the request now, please try again later");
    }
  }
  createHotel(name,pricePerNight,extras,country,city) async{
    var url = Uri.parse('$SERVER_URLL/hotel/hotels');
    var data = {
      "name":name,
      "pricePerNight":pricePerNight,
      "extras":extras,
      "country": country,
      "city":city
    };
    var dataEncoded = json.encode(data);
    try{
      await http.post(url, body: dataEncoded);
    }on Exception{
      Get.snackbar("Error","Can't process the request now, please try again later");
    }

  }

  saveHotel(name,pricePerNight,extras,country,city,roomphoto)async{
    var url = Uri.parse('$SERVER_URLL/savedhotels/savehotel');
    var data = {
      "name":name,
      "pricePerNight":pricePerNight,
      "extras":extras,
      "country": country,
      "roomPhoto":roomphoto,
      "city":city,
      "userId":userStores.id
    };

    var dataEncoded = json.encode(data);
    var response = await http.post(
        url,
        body: dataEncoded,
        headers: { "accept": "application/json", "content-type": "application/json"});

    await getSavedHotels(userStores.id);

  }

  getSavedHotels(userId) async{
    var url = Uri.parse('$SERVER_URLL/savedHotels/$userId');
    var response = await http.get(url);
    var responsejson = json.decode(response.body);
    
    List<SavedHotelModel> hotel = List<SavedHotelModel>.from(responsejson.map((hotel)=>
      SavedHotelModel(
          name: hotel['name'],
          bannerImage: hotel['roomPhoto'],
          country: hotel['country'],
          price: hotel['pricePerNight'],
          extras: hotel['extras'],
          city: hotel['city'],
          id: hotel['id'])
    ));
    
    savedHotelsStores.setSavedHotels(hotel);

  }

  deleteHotelById(id)async{
    var url = Uri.parse('$SERVER_URLL/savedhotels/$id');
    var response = await http.delete(url);
    getSavedHotels(userStores.id);

  }

  deleteAllHotels()async{
    var url = Uri.parse('$SERVER_URLL/savedhotels');
    var response = await http.delete(url);
    hotelService.getSavedHotels(userStores.id);

  }

}
var hotelService = HotelService();

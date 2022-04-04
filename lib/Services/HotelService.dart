import 'dart:convert';

import 'package:demo_app/Consts/SERVER_URL.dart';
import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:demo_app/Pages/HomePage.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/Widgets/HotelCard.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class HotelService{


  //get hotels request
  getHotels(navigate, id) async{

    var url = Uri.parse('$SERVER_URLL/hotel/hotels');
    try{
      var response = await http.get(url);
      var responsejson = json.decode(response.body);
      //map the response to the HotelCardModel to save in the store
      List<HotelCardModel> hotel = List<HotelCardModel>.from(responsejson.map((hotel) =>
          HotelCardModel(id:hotel['id'],name: hotel['name'], extras: hotel['extras'], country: hotel['country'], city: hotel['city'], price: hotel['pricePerNight'],bannerImage: hotel['roomPhoto'])
      ));
      //set the hotels
      hotelStores.setDetails(hotel);
    }on Exception{
      Get.snackbar("Error", "Can't process the request now, please try again later");
    }
  }
  //post hotel request
  createHotel(name,pricePerNight,extras,country,city) async{
    var url = Uri.parse('$SERVER_URLL/hotel/hotels');
    //body
    var data = {
      "name":name,
      "pricePerNight":pricePerNight,
      "extras":extras,
      "country": country,
      "city":city
    };
    var dataEncoded = json.encode(data);
    //request
    try{
      await http.post(url, body: dataEncoded);
    }on Exception{
      Get.snackbar("Error","Can't process the request now, please try again later");
    }

  }

  //TODO: create a model for this
  saveHotel(hotel){

  }
  getSavedHotels(userId){

  }
  deleteHotelById(id){

  }
  deleteAllHotels(){

  }



}
var hotelService = HotelService();
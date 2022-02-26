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

  getHotels(navigate, id) async{
    var url = Uri.parse('$SERVER_URLL/hotel/hotels');
    var response = await http.get(url);
    var responsejson = json.decode(response.body);

    List<HotelCardModel> hotel = List<HotelCardModel>.from(responsejson.map((hotel) =>
        HotelCardModel(id:hotel['id'],name: hotel['name'], extras: hotel['extras'], country: hotel['country'], city: hotel['city'], price: hotel['pricePerNight'],bannerImage: 'https://via.placeholder.com/150')
     ));
    print(response.body);
    hotelStores.setDetails(hotel);
    print(hotelStores.name);


    //get the hotel id
    var hotelid = hotel[0].id;

    print("hotel id =>>>>" + (hotelid).toString());



  }

  createHotel(name,pricePerNight,extras,country,city) async{
    var data = {
      "name":name,
      "pricePerNight":pricePerNight,
      "extras":extras,
      "country": country,
      "city":city
    };
    var dataencoded = json.encode(data);
    var url = Uri.parse('$SERVER_URLL/hotel/hotels');
    var response = await http.post(url, body: dataencoded);
    return response.statusCode;


  }


}
var hotelService = HotelService();
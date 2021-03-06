import 'dart:convert';

import 'package:demo_app/Consts/SERVER_URL.dart';
import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:demo_app/Models/SavedHotelModel.dart';
import 'package:demo_app/Pages/SearchPage.dart';
import 'package:demo_app/Services/HotelService.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/StateStores/search-stores.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:http/http.dart' as http;
class SearchService{

  search(query)async{
    if(query == ""){
      hotelService.getHotels(false, false);
    }

    try{
      var url = Uri.parse('$SERVER_URLL/hotel/$query');
      var response = await http.get(url);
      var responsejson = json.decode(response.body);
      List<HotelCardModel> hotel = List<HotelCardModel>.from(responsejson.map((hotel)=>
          HotelCardModel(
              name: hotel['name'],
              bannerImage: hotel['roomPhoto'],
              country: hotel['country'],
              price: hotel['pricePerNight'],
              extras: hotel['extras'],
              city: hotel['city'],
              id: hotel['id']
          )
      ));

      hotelStores.setDetails(hotel);
    }on RangeError{
      print("error");
    }
  }

}
var searchService = SearchService();
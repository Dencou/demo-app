import 'dart:convert';
import 'dart:io';

import 'package:demo_app/Consts/SERVER_URL.dart';
import 'package:demo_app/Models/FeedbackModel.dart';
import 'package:demo_app/StateStores/feedback-stores.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/StateStores/user-stores.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:http/http.dart' as http;


class FeedbackService{
  

  //post new feedback
  Future createFeedback({rating, message, hotelid, userid}) async{

    var url = Uri.parse('$SERVER_URLL/feedback/feedback');

    var data={
      "hotelId":hotelid,
      "userId":userid,
      "rating":rating,
      "message":message,
    };
    try{
      var dataEncode = json.encode(data);
      await http.post(url,body: dataEncode,headers: { "accept": "application/json", "content-type": "application/json" });
    }on Exception{
      Get.snackbar("Server Error","Can't process the request now, please try again later");
    }
  }

  //get all feedbacks from the hotel
  Future getFeedbacks() async{

    //req
    var currHotelId = hotelStores.currHotel.toString();
    var url = Uri.parse('$SERVER_URLL/feedback/$currHotelId');
    try{
      var response = await http.get(url);
      var responsejson = json.decode(response.body);

      //map the request
      List<FeedbackModel> feedbacks = List<FeedbackModel>.from(responsejson.map((feedback) =>
          FeedbackModel(userStores.email, userStores.name, feedback['message'], feedback['rating'], hotelStores.currHotel.toString())
      ));
      feedbackStore.setFeedbackList(feedbacks);
    }on Exception{
      Get.snackbar("Error", "Can't process the request now, please try again later");
    }

  }

}
var feedbackService = FeedbackService();
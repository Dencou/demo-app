import 'dart:convert';
import 'dart:io';

import 'package:demo_app/Consts/SERVER_URL.dart';
import 'package:demo_app/Models/FeedbackModel.dart';
import 'package:demo_app/StateStores/feedback-stores.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/StateStores/user-stores.dart';
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
    var dataEncode = json.encode(data);
    var response = await http.post(url,body: dataEncode,headers: { "accept": "application/json", "content-type": "application/json" });
  }

  //get all feedbacks from the hotel
  Future getFeedbacks() async{
    //req
    var hotelid = hotelStores.currHotel.toString();
    var url = Uri.parse('$SERVER_URLL/feedback/$hotelid');
    var response = await http.get(url);
    var responsejson = json.decode(response.body);

    //map the request
    List<FeedbackModel> feedbacks = List<FeedbackModel>.from(responsejson.map((feedback) =>
      FeedbackModel(userStores.email, userStores.name, feedback['message'], feedback['rating'], hotelStores.currHotel.toString())
    ));
    feedbackStore.setFeedbackList(feedbacks);


  }

}
var feedbackService = FeedbackService();
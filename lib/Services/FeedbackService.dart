import 'dart:convert';
import 'dart:io';

import 'package:demo_app/Consts/SERVER_URL.dart';
import 'package:demo_app/Models/FeedbackModel.dart';
import 'package:demo_app/StateStores/feedback-stores.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/StateStores/user-stores.dart';
import 'package:http/http.dart' as http;


class FeedbackService{
  

  
  Future createFeedback({rating, message, hotelid, userid}) async{
    print('creating');
    var url = Uri.parse('$SERVER_URLL/feedback/feedback') ;
    //print(hotelid.runtimeType);

    //print(rating.runtimeType);
    //print(message.runtimeType);

    var data={
      "hotelId":hotelid,
      "userId":userid,
      "rating":rating,
      "message":message,
    };
    var dataencode = json.encode(data);
    print(dataencode);
    var response = await http.post(url,body: dataencode,headers: { "accept": "application/json", "content-type": "application/json" });
    var responsejson = json.decode(response.body);
    print(response.body);
  }
  
  Future getFeedbacks() async{

    var hotelid = hotelStores.currHotel.toString();
    var url = Uri.parse('$SERVER_URLL/feedback/$hotelid');
    var response = await http.get(url);
    var responsejson = json.decode(response.body);

    print(responsejson);



    List<FeedbackModel> feedbacks = List<FeedbackModel>.from(responsejson.map((feedback) =>
      FeedbackModel(userStores.email, userStores.name, feedback['message'], feedback['rating'], hotelStores.currHotel.toString())
    ));


    feedbackStore.setFeedbackList(feedbacks);








  }

  Future getNamesForFeedback() async {

  }


}
var feedbackService = FeedbackService();
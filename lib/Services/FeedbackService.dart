import 'dart:convert';
import 'dart:io';

import 'package:demo_app/Consts/SERVER_URL.dart';
import 'package:http/http.dart' as http;


class FeedbackService{
  
  getFeedbacks(id){}
  
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
    print(dataencode.runtimeType);
    var response = await http.post(url,body: dataencode,headers: { "accept": "application/json", "content-type": "application/json" });
    var responsejson = json.decode(response.body);
    print(response.body);
  }


}
var feedbackService = FeedbackService();
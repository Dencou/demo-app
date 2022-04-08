import 'dart:convert';

import 'package:demo_app/Consts/SERVER_URL.dart';
import 'package:demo_app/StateStores/payment-stores.dart';
import 'package:http/http.dart' as http;


class PaymentService{

  processPayment(days, date, price)async{
    var url = Uri.parse('$SERVER_URLL/hotel/payment');
    var dayss =int.parse(days);
    var pricee = int.parse(price);
    var datee = date.toString();

    var body = {
      "days":dayss,
      "price":pricee,
      "date":datee,
    };
    var data = json.encode(body);

    var response = await http.post(url,body: data,headers: { "accept": "application/json", "content-type": "application/json" });
    var responsejson = json.decode(response.body);
    paymentStores.setFeedback(responsejson['total'], responsejson['date']);

    print(paymentStores.date);

  }


}
var paymentService = PaymentService();
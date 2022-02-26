import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:demo_app/Consts/SERVER_URL.dart';
import 'package:demo_app/Pages/HomePage.dart';
import 'package:demo_app/StateStores/user-stores.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'HotelService.dart';

class AuthService{

  Future login({required String name, required String password, required String email})async{
    var url = Uri.parse('$SERVER_URLL/auth/signin');
    var data ={
      'email':email,
      'password':password
    };
    var response = await http.post(url, body: data);
    var responsejson = json.decode(response.body);

    print(response.body);

    if(response.statusCode == 201){
      await hotelService.getHotels(false,false);
      Get.off(HomePage());
      //set the access token
      userStores.setToken(responsejson['access_token']);
      
    }else{
      //return snackbar
      return;
    }
  }

  Future singUp({name, email, password, country,cpassword,image}) async{
    print('signuop');
    var url = Uri.parse('$SERVER_URLL/auth/signup');
    if(password != cpassword){
      //return snackbar
      return "error";
    }else{
      var data = {
        "name":name,
        "email":email,
        "password":password,
        "country":cpassword,
        "image":image,
      };
      var response = await http.post(url, body: data);
      var responsejson = json.decode(response.body);

      //set access token
      userStores.setToken(responsejson['access_token']);
      
      if(response.statusCode == 200){
        Get.off(HomePage());
      }else{
        //return snackbar
        return;
      }
    }

  }

  passValidation(password, cpassword){


  }


}
var authService = AuthService();
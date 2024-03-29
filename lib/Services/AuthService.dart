import 'dart:convert';
import 'dart:io';

import 'package:demo_app/Pages/LoginPage.dart';
import 'package:demo_app/Services/FeedbackService.dart';
import 'package:demo_app/Widgets/SnackBarW.dart';
import 'package:http/http.dart' as http;
import 'package:demo_app/Consts/SERVER_URL.dart';
import 'package:demo_app/Pages/HomePage.dart';
import 'package:demo_app/StateStores/user-stores.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';


import 'HotelService.dart';

class AuthService{

  Future login({required String password, required String email})async{
    var url = Uri.parse('$SERVER_URLL/auth/signin');

    var data ={
      'email':email,
      'password':password
    };
    try{
      var response = await http.post(url, body: data);
      var responsejson = json.decode(response.body);

      await hotelService.getHotels(false,false);

      var token = responsejson['access_token'];
      await getUserData(token);

      Get.off(HomePage());

    }on Exception{
      Get.snackbar('Error', 'please verify your credentials or try again later');
    }
  }


  Future singUp({name, email, password, country, cpassword,image}) async{
    var url = Uri.parse('$SERVER_URLL/auth/signup');

    if(password != cpassword){
      SnackBarW.snackBarCredentialsInvalid(message: "Passwords mismatch");
    }else{
      try{
        //request body
        var data = {
          "name":name,
          "email":email,
          "password":password,
          "country":cpassword,
          "image":image,
        };

        var response = await http.post(url, body: data);

        var responsejson = json.decode(response.body);

        saveUserToken(responsejson['access_token']);

        await getUserData(responsejson['access_token']);

        Get.off(HomePage());
      }on Exception{
        SnackBarW.snackBars();
      }

    }

  }

  Future logOut() async{

    userStores.token == "";

  }

  Future getUserData(access_token)async{

    var url = Uri.parse('$SERVER_URLL/users/me');
    var response = await http.get(url,headers: {HttpHeaders.authorizationHeader:'Bearer $access_token'});
    var responsejson = json.decode(response.body);


    await hotelService.getSavedHotels(responsejson['id']);
    userStores.setUserData(responsejson['name'],responsejson['email'], responsejson['id']);


    
  }

  void saveUserToken(token){
    userStores.setToken(token);
  }
}
var authService = AuthService();

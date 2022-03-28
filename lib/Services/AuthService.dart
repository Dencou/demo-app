import 'dart:convert';
import 'dart:io';

import 'package:demo_app/Services/FeedbackService.dart';
import 'package:http/http.dart' as http;
import 'package:demo_app/Consts/SERVER_URL.dart';
import 'package:demo_app/Pages/HomePage.dart';
import 'package:demo_app/StateStores/user-stores.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'HotelService.dart';

class AuthService{

  Future login({required String name, required String password, required String email})async{

    //set the url
    var url = Uri.parse('$SERVER_URLL/auth/signin');

    //create the body for the request
    var data ={
      'email':email,
      'password':password
    };

    //do the request
    var response = await http.post(url, body: data);

    //decode the request
    var responsejson = json.decode(response.body);

    //check if the request was successful
    if(response.statusCode == 201){
      //get the hotels request for HomePage()
      await hotelService.getHotels(false,false);

      //store the JWT token
      var token = responsejson['access_token'];
      await getUserData(token);

      //navigateto HotelPage()
      Get.off(HomePage());
    }else{
      //TODO: make the snackbar
      return Get.snackbar('pene', 'pilin');
    }
  }

  Future singUp({name, email, password, country,cpassword,image}) async{
    //set the url
    var url = Uri.parse('$SERVER_URLL/auth/signup');

    //verify if the passwords matches
    if(password != cpassword){
      //return snackbar
      return "error";
    }else{
      //request body
      var data = {
        "name":name,
        "email":email,
        "password":password,
        "country":cpassword,
        "image":image,
      };
      //post request to create user
      var response = await http.post(url, body: data);

      //decode the response
      var responsejson = json.decode(response.body);


      //check if the request was successful
      if(response.statusCode == 200){
        //store the JWT token
        var token = responsejson['access_token'];
        userStores.setToken(token);
        await getUserData(token);
        Get.off(HomePage());
      }else{
        //TODO: make the snackbar
        return;
      }
    }

  }
  //returns the about me user data
  Future getUserData(access_token)async{

    //request
    var url = Uri.parse('$SERVER_URLL/users/me');
    var response = await http.get(url,headers: {HttpHeaders.authorizationHeader:'Bearer $access_token'});
    var responsejson = json.decode(response.body);

    //store user data
    userStores.setUserData(responsejson['name'],responsejson['email'], responsejson['id']);
    
  }
}
var authService = AuthService();
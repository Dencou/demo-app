import 'package:demo_app/Services/AuthService.dart';
import 'package:demo_app/Services/HotelService.dart';
import 'package:demo_app/Widgets/GradientText.dart';
import 'package:demo_app/Pages/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomePage.dart';

class LoginPage extends StatelessWidget{

   TextEditingController email = TextEditingController();
   TextEditingController password = TextEditingController();

   //login request
  submit(){
    authService.login(password:password.text,email:email.text);
  }
  //Text color
  var secColors = Colors.white;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Hero(
        tag: "tag",
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://media.istockphoto.com/vectors/black-square-pattern-luxury-sofa-background-and-texture-vector-id902378754?k=20&m=902378754&s=170667a&w=0&h=tez0M1n5c6oJ88pqllAr3SMxEW8TfFxHaNufn5lTFc0='),
                  fit: BoxFit.cover
              )
          ),
          child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Container(
                        width: 350,
                        child: Column(
                          children: [
                            GradientText('MOMENTUM',style: GoogleFonts.merriweatherSans(textStyle: const TextStyle(fontSize: 40)), gradient: const LinearGradient(colors: [Colors.purpleAccent,Colors.deepPurple])),
                            GradientText('GROWTH • HAPPENS • TODAY',style: GoogleFonts.dancingScript(textStyle: const TextStyle(fontSize: 24)), gradient: const LinearGradient(colors: [Colors.red,Colors.orange,Colors.yellow,Colors.green,Colors.blue,Colors.purple])),

                            SizedBox(height: 40,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(onPressed: ()=>{}, child: Text('Sign in',style: TextStyle(color: secColors,fontSize: 20),)),
                                TextButton(onPressed: ()=>{Get.off(RegisterPage(),duration: const Duration(milliseconds: 0),transition: Transition.fadeIn)}, child: Text('Sign up',style: TextStyle(color: secColors,fontSize: 20),)),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            TextField(
                              style: const TextStyle(color: Colors.white),
                              controller: email,
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: secColors),
                                  prefixIcon: Icon(Icons.mail,color: secColors,),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: secColors),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: secColors)
                                  )
                              ),

                            ),
                            const SizedBox(height: 16,),
                            TextField(
                              style: const TextStyle(color: Colors.white),
                              obscureText: true,
                              controller: password,
                              decoration: InputDecoration(

                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: secColors),
                                  prefixIcon: Icon(Icons.lock,color: secColors,),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: secColors),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: secColors)
                                  )
                              ),
                            ),

                            const SizedBox(height: 20,),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(40),
                                  primary: Colors.deepPurpleAccent,
                                  shadowColor: Colors.deepPurpleAccent,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                                ),
                                onPressed: ()=>{submit()},
                                child: const Text('Sign in')

                            ),
                            const SizedBox(height: 12,),
                            Center(
                              child: GestureDetector(
                                onTap: ()=>{hotelService.getSavedHotels(1)},
                                child: const Text('Forgot your password?',style: TextStyle(color: Colors.grey),),
                              ),
                            )


                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
          ),
        ),
      ),

    );

  }



}
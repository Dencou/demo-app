import 'package:demo_app/Widgets/GradientText.dart';
import 'package:demo_app/Pages/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget{

  var secColors = Colors.white;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
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
                    padding: EdgeInsets.only(top: 0),
                    child: Container(
                      width: 350,
                      child: Column(
                        children: [

                          GradientText('MOMENTUM',style: GoogleFonts.merriweatherSans(textStyle: TextStyle(fontSize: 40)), gradient: LinearGradient(colors: [Colors.purpleAccent,Colors.deepPurple])),
                          GradientText('GROWTH • HAPPENDS • TODAY',style: GoogleFonts.dancingScript(textStyle: TextStyle(fontSize: 24)), gradient: LinearGradient(colors: [Colors.red,Colors.orange,Colors.yellow,Colors.green,Colors.blue,Colors.purple])),

                          SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(onPressed: ()=>{Get.off(LoginPage())}, child: Text('Sign in',style: TextStyle(color: secColors,fontSize: 20),)),
                              TextButton(onPressed: ()=>{}, child: Text('Sign up',style: TextStyle(color: secColors,fontSize: 20),)),
                            ],
                          ),
                          SizedBox(height: 10,),
                          TextField(
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
                          SizedBox(height: 16,),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Username',
                                hintStyle: TextStyle(color: secColors),
                                prefixIcon: Icon(Icons.person,color: secColors,),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: secColors),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: secColors)
                                )
                            ),

                          ),
                          SizedBox(height: 16,),
                          TextField(
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
                          SizedBox(height: 16,),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Confirm password',
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
                          SizedBox(height: 20,),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.fromHeight(40),
                                primary: Colors.deepPurpleAccent,
                                shadowColor: Colors.deepPurpleAccent,
                                elevation: 10,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                              ),
                              onPressed: ()=>{},
                              child: Text('Sign up')

                          ),
                          SizedBox(height: 12,),
                          Center(
                            child: GestureDetector(
                              onTap: ()=>{print('forgot password')},
                              child: Text('Forgot your password?',style: TextStyle(color: Colors.grey),),
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
      )
    );
  }

}
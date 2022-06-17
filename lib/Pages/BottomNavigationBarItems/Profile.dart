import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:demo_app/Pages/SavedHotelsPage.dart';
import 'package:demo_app/StateStores/user-stores.dart';
import 'package:demo_app/Widgets/HotelCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Profile extends StatefulWidget{

  @override
  _Profile createState() => _Profile();




}
class _Profile extends State<Profile>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            image: DecorationImage(
                                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHlIC6mj9KXGnVloMBpbZ5MULyumav2TarjA&usqp=CAU'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 30,),
                          Divider(),
                          Row(
                            children: [
                              const Icon(Icons.person, color: Colors.deepPurpleAccent,),
                              const SizedBox(width: 10,),
                              Text(userStores.name, style: TextStyle(fontSize: 18),),
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Icon(Icons.mail, color: Colors.deepPurpleAccent),
                              const SizedBox(width: 10,),
                              Text(userStores.email, style: TextStyle(fontSize: 18)),
                            ],
                          ),
                          const Divider(),




                        ],
                      )


                    ],
                  )
              ),
            ),
          ),

          ],

      ),

      floatingActionButton: FloatingActionButton.extended(onPressed: ()=>{Get.to(SavedHotelsPage())}, label: Text('Saved hotels'),icon: Icon(Icons.save),),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }

}
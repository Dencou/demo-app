import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:demo_app/StateStores/user-stores.dart';
import 'package:demo_app/Widgets/HotelCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            padding: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200
              ),
              child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            image: DecorationImage(
                                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHlIC6mj9KXGnVloMBpbZ5MULyumav2TarjA&usqp=CAU'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(border:Border.all(color: Colors.black12)),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Name'), Text(userStores.name)],),),
                              SizedBox(height: 20,),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(border:Border.all(color: Colors.black12)),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Email'), Text(userStores.email)],),),
                              SizedBox(height: 20,),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(border:Border.all(color: Colors.black12)),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Travels'), Text('You dont have any travels at this time')],),),
                            ],
                          ),
                        ),
                      ),

                    ],
                  )
              ),
            ),
          ),

          ],

      ),
      //TODO:Add the route
      floatingActionButton: FloatingActionButton.extended(onPressed: ()=>{}, label: Text('Saved hotels'),icon: Icon(Icons.save),),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }

}
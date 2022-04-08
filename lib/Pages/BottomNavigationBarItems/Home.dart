import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:demo_app/Pages/DetailedHotelInfoPage.dart';
import 'package:demo_app/Services/HotelService.dart';
import 'package:demo_app/Services/SearchService.dart';
import 'package:demo_app/StateStores/hotel-details.dart';
import 'package:demo_app/Widgets/HotelCard.dart';
import 'package:demo_app/Widgets/SearchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Home extends StatefulWidget{
  @override
  _Home createState() => _Home();
  }

  @override
  initState() {
    hotelService.getHotels(false,false);
  }



class _Home extends State<Home> {

  TextEditingController search = TextEditingController();

  submit(querry)async{
    print("submit");
    await searchService.search(querry);
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: [
            Column(
                children: [
                  //search bar
                  Padding(
                      padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                      child: Column(
                        children: [
                          TextField(
                            controller: search,
                            decoration: InputDecoration(
                              filled: true,
                              contentPadding: EdgeInsets.all(16),
                              fillColor: Colors.lightBlue.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              label: Text('Search for hotels and countries'),
                              suffixIcon: Icon(Icons.search),
                            ),
                          ),
                          ElevatedButton(onPressed: ()=>{submit(search.text)}, child: Text("Search!"))
                        ],
                      )
                  ),

                  //hotels to display

                  hotelStores.hotels.isEmpty
                      ? Center(child: Text('Nothing found'),)
                      : Column(
                    children: [...hotelStores.hotels.map((e) => HotelCard(e)),],
                  )
                ],

            ),


          ],
        )
    );
  }
}
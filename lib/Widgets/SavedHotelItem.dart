

import 'package:demo_app/Models/SavedHotelModel.dart';
import 'package:demo_app/Services/HotelService.dart';
import 'package:demo_app/StateStores/saved-hotels-stores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedHotelItem extends StatelessWidget {

  SavedHotelModel savedHotelModel;
  SavedHotelItem(this.savedHotelModel);




  @override
  Widget build(BuildContext context) {
    return
      Padding(padding: EdgeInsets.all(10),
        child: Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2
            ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
        child: Row(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                        child: Image.network(savedHotelModel.bannerImage, fit: BoxFit.fill,width: 100, height: 100,),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            Text(savedHotelModel.name),
                            Text(savedHotelModel.extras,style: TextStyle(fontSize: 12, color: Colors.grey),),
                            SizedBox(height: 18,),
                            Text('${savedHotelModel.price} PYG')
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
                        ),
                        onPressed: ()=>{hotelService.deleteHotelById(savedHotelModel.id)}, child: Icon(Icons.delete))],
                ),
                  ],
                )
          ],
        )

      ),
    );
  }
}

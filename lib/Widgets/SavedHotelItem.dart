

import 'package:demo_app/Models/SavedHotelModel.dart';
import 'package:demo_app/Services/HotelService.dart';
import 'package:demo_app/StateStores/saved-hotels-stores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SavedHotelItem extends StatelessWidget {

  SavedHotelModel savedHotelModel;
  SavedHotelItem(this.savedHotelModel);

  deleteById(){
    print('a0');
    hotelService.deleteHotelById(savedHotelModel.id);
  }
  doNothing(){

  }




  @override
  Widget build(BuildContext context) {
    return
      Padding(padding: EdgeInsets.all(10),
        child: Slidable(
          key: const ValueKey(0),
          startActionPane: ActionPane(
            // A motion is a widget used to control how the pane animates.
            motion: const ScrollMotion(),

            // A pane can dismiss the Slidable.
            dismissible: DismissiblePane(onDismissed: () => {deleteById()}),

            // All actions are defined in the children parameter.
            children: [
              // A SlidableAction can have an icon and/or a label.
              SlidableAction(
                onPressed: doNothing(),
                backgroundColor: Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),

            ],
          ),
          child: Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.black,
                      offset: Offset(1,2),
                      spreadRadius: 10
                  ),
                ],

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


                    ],
                  )
                ],
              )

          ),
        )
    );
  }
}

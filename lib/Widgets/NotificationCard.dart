import 'package:demo_app/Models/NotificationCardModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget{




  NotificationCardModel notificationCard;
  NotificationCard(this.notificationCard);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 6,
            )],

        ),
        child: Center(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: NetworkImage(notificationCard.img),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(notificationCard.header, style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 2,),
                        Text(notificationCard.description),
                        SizedBox(height: 7,),
                        Text(notificationCard.timeElapsed,style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }

}
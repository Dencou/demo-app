import 'package:demo_app/Models/NotificationCardModel.dart';
import 'package:demo_app/Widgets/NotificationCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget{
  @override
  _Notifications createState() => _Notifications();



}
class _Notifications extends State<Notifications>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            NotificationCard(NotificationCardModel(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHlIC6mj9KXGnVloMBpbZ5MULyumav2TarjA&usqp=CAU',header: 'New rooms avaliable',description: 'checkout the new rooms added recently',timeElapsed: '2 days ago')),
            NotificationCard(NotificationCardModel(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHlIC6mj9KXGnVloMBpbZ5MULyumav2TarjA&usqp=CAU',header: 'Rooms are running sale',description: 'checkout the offers',timeElapsed: '6 days ago')),
            NotificationCard(NotificationCardModel(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHlIC6mj9KXGnVloMBpbZ5MULyumav2TarjA&usqp=CAU',header: 'Wondering travel to Paraguay?',description: 'Paraguay hotel rooms are in sale',timeElapsed: '10 days ago')),
          ],
        )
    );
  }

}
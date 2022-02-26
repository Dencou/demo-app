import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget{
  @override
  _FeedbackPage createState() => _FeedbackPage();
}
class _FeedbackPage extends State<FeedbackPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hola'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [

          ],
        ),
      ),

    );
  }

}
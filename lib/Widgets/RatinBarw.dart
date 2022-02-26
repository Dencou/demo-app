import 'package:demo_app/StateStores/feedback-stores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarw extends StatelessWidget{
  double itemSize;
  double initialRating;
  int itemCount;


  RatingBarw({
    required this.itemSize,
    required this.initialRating,
    required this.itemCount
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      child: RatingBar.builder(
        initialRating: initialRating,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: false,
        itemCount: itemCount,
        itemSize: itemSize,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) =>
            Icon(Icons.star,color: Colors.amber,),

        onRatingUpdate: (rating) {
          print(rating);
          feedbackStore.setFeedback(rating.toInt());
        },
      ),
    );
  }

}
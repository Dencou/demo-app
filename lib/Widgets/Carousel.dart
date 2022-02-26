import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import 'UsersFeedback.dart';

class Carousel extends StatelessWidget{

  Widget content;
  bool autoPlay;
  int itemCount;

  Carousel({required this.content,required this.itemCount,required this.autoPlay});




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
            width: double.infinity,

            child: content,
          ),
      options: CarouselOptions(
        autoPlay: autoPlay,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        initialPage: 1,
      ),
    ),
      ],
    );
  }

}
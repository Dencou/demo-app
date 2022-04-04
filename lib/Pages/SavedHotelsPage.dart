import 'package:demo_app/Widgets/AppBarW.dart';
import 'package:demo_app/Widgets/SavedHotelItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedHotelsPage extends StatelessWidget {
  const SavedHotelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW(),
      body: Column(
        children: [
          SavedHotelItem(),

        ],
      ),

    );
  }
}

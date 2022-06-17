import 'package:demo_app/Pages/HomePage.dart';
import 'package:demo_app/Services/HotelService.dart';
import 'package:demo_app/StateStores/saved-hotels-stores.dart';
import 'package:demo_app/Widgets/AppBarW.dart';
import 'package:demo_app/Widgets/SavedHotelItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SavedHotelsPage extends StatelessWidget {
  const SavedHotelsPage({Key? key}) : super(key: key);

  deleteAll(){
    hotelService.deleteAllHotels();
    Get.off(HomePage());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW(),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Center(

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: const [
                    Text('Saved Hotels', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text('Slide to the right to remove hotel', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                  ],
                )
              ),
            ),
            savedHotelsStores.savedHotels.isEmpty ?
            const Align(
              alignment: Alignment.center,
              child: Text('No hotels saved'),
            )
                :
            Column(
              children: [
                ...savedHotelsStores.savedHotels.map((e) => SavedHotelItem(e)),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(backgroundColor: Colors.red,onPressed: ()=>{deleteAll()}, label: Text('Clear all'),icon: Icon(Icons.delete),),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }

}

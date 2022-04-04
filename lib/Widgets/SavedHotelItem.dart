import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedHotelItem extends StatelessWidget {
  const SavedHotelItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
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
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
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
                      Text('Nombre del hotel'),
                      Text('200'),
                      SizedBox(height: 30,),
                      Text('hola')
                    ],
                  ),
                ),

              ],
            ),
          ],
        )

      ),
    );
  }
}

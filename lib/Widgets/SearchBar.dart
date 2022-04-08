import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {

  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.only(top: 10,left: 10,right: 10),
        child: TextField(
          controller: search,
          decoration: InputDecoration(
            filled: true,
            contentPadding: EdgeInsets.all(16),
            fillColor: Colors.lightBlue.shade100,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
            ),

            ),
            label: Text('Search for hotels and countries'),
            suffixIcon: Icon(Icons.search),
            
        ),
          

      ),
    );
  }
}

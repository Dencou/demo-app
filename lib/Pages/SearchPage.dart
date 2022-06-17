import 'package:demo_app/Services/SearchService.dart';
import 'package:demo_app/StateStores/search-stores.dart';
import 'package:demo_app/Widgets/AppBarW.dart';
import 'package:demo_app/Widgets/HotelCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController search = TextEditingController();

  submit(query)async{
    await searchService.search(query);
    setState(() {

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW(),
      body: ListView(
        children: [
          Column(
            children: [
                Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                  child: Column(
                    children: [
                      TextField(
                        controller: search,
                        decoration: InputDecoration(
                          filled: true,
                          contentPadding: const EdgeInsets.all(16),
                          fillColor: Colors.lightBlue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),

                          ),
                          label: const Text('Search for hotels and countries'),
                          suffixIcon: const Icon(Icons.search),
                        ),
                      ),
                      ElevatedButton(onPressed: ()=>{
                        setState((){}),
                        submit(search.text),
                      }, child: const Text("press me !"))
                    ],
                  )
              ),
              ...searchStores.savedHotels.map((e) => HotelCard(e)),
            ],
          )
        ],
      ),
    );
  }
}

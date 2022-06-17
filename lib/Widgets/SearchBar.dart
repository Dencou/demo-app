import 'package:demo_app/Services/SearchService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {

  VoidCallback onSubmit;
  SearchBar({required this.onSubmit});

  TextEditingController search = TextEditingController();

  submit(query)async{
    await searchService.search(query);
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
            ElevatedButton(onPressed: ()=>{submit(search.text)}, child: const Text("press me !"))
          ],
        )
    );
  }
}

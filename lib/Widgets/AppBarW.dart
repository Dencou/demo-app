import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarW extends StatelessWidget implements PreferredSizeWidget{
  @override

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text('Momentum',textAlign: TextAlign.center,),
      toolbarHeight: 80,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(800, 120)
          )
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(800, 120)
          ),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.deepPurple,Colors.blueAccent]),
        ),
      ),
    );
  }

}
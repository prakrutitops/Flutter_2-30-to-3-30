//@dart=2.9
import 'package:flutter/material.dart';

import 'FirstScreen.dart';
import 'home.dart';
import 'mygrid.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(

      title: 'PageView in Flutter',

      theme: ThemeData
        (
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),

    );
  }

}

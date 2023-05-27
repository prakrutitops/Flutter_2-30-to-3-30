//@dart=2.9

import 'package:flutter/material.dart';

import 'app_screens/notelist.dart';


void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (
      title: 'NoteKeeper',

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
          primarySwatch: Colors.deepPurple),

        home: NoteList(),
      );
  }
}
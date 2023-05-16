//@dart=2.9
import 'package:flutter/material.dart';

import 'NoteList.dart';

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
        title: "Note Keeper",
        theme: ThemeData
          (

            primarySwatch: Colors.deepPurple

          ),
          home: NoteList(),

    );


  }
  
}

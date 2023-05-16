//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'note.dart';
import 'notedetail.dart';

class NoteList extends StatefulWidget
{
  @override
  NoteState createState() => NoteState();

}

class NoteState extends State<NoteList>
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        appBar: AppBar(title: Text('Notes'),),
        floatingActionButton: FloatingActionButton(
          onPressed: ()
          {
            debugPrint('FAB clicked');
            navigateToDetail(Note('', '', 2), 'Add Note');
          },

          tooltip: 'Add Note',

          child: Icon(Icons.add),

        ),


      );
  }

  void navigateToDetail(Note note, String s)async
  {

    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NoteDetail(note, s);
    }));

  }

}
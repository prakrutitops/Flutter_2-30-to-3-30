//@dart=2.9
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../model/Note.dart';
import '../utils/database_helper.dart';
import 'note_detail.dart';

class NoteList extends StatefulWidget
{


  @override
  NoteListState  createState() => NoteListState();

}

class NoteListState extends State<NoteList>
{

  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Note> noteList;
  int count = 0;


  @override
  Widget build(BuildContext context)
  {
    if (noteList == null)
    {
      noteList = List<Note>();
      updateListView();
    }
      return Scaffold(

        appBar: AppBar(
          title: Text('Notes'),
        ),


        body: getNoteListView(),


        floatingActionButton: FloatingActionButton(
          tooltip: 'Add Note',
          onPressed: () {

            navigateToDetail(Note('', '', 2), 'Add Note');

          },
          child: Icon(Icons.add),),

      );


  }

  void navigateToDetail(Note note, String title) async
  {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context)
    {
      return NoteDetail(note, title);
    }));


  }
  ListView getNoteListView()
  {
    TextStyle titleStyle = Theme.of(context).textTheme.subtitle1;

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(

            leading: CircleAvatar(
              backgroundColor: getPriorityColor(this.noteList[position].priority),
              child: getPriorityIcon(this.noteList[position].priority),
            ),

            title: Text(this.noteList[position].title, style: titleStyle,),

            subtitle: Text(this.noteList[position].date),

            trailing: GestureDetector(
              child: Icon(Icons.delete, color: Colors.grey,),
             /* onTap: () {
                _delete(context, noteList[position]);
              },*/
            ),


            onTap: () {
              debugPrint("ListTile Tapped");
              navigateToDetail(this.noteList[position],'Edit Note');
            },

          ),
        );
      },
    );

  }
  Color getPriorityColor(int priority) {
    switch (priority) {
      case 1:
        return Colors.red;
        break;
      case 2:
        return Colors.yellow;
        break;

      default:
        return Colors.yellow;
    }
  }

  Icon getPriorityIcon(int priority) {
    switch (priority) {
      case 1:
        return Icon(Icons.play_arrow);
        break;
      case 2:
        return Icon(Icons.keyboard_arrow_right);
        break;

      default:
        return Icon(Icons.keyboard_arrow_right);
    }
  }

  void updateListView() {

    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {

      Future<List<Note>> noteListFuture = databaseHelper.getNoteList();
      noteListFuture.then((noteList) {
        setState(() {
          this.noteList = noteList;
          this.count = noteList.length;
        });
      });
    });
  }

}
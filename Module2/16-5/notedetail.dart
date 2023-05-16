//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'DatabaseHelper.dart';
import 'note.dart';

class NoteDetail extends StatefulWidget
{
  final String appBarTitle;
  final Note note;

  NoteDetail(this. note, this.appBarTitle);

  @override
  NoteDetailState createState() => NoteDetailState(this.note, this.appBarTitle);


}

class NoteDetailState  extends State<NoteDetail>
{
  String appBarTitle;
  Note note;
  DatabaseHelper helper = DatabaseHelper();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

 NoteDetailState(this.note, this.appBarTitle);


  @override
  Widget build(BuildContext context)
  {

      return Scaffold(


          appBar: AppBar(title: Text("Add Details"),),
          body: Padding(

            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: ListView(

                children: [

                    ListTile(


                    ),

                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: TextField(
                      controller: titleController,

                      onChanged: (value) {
                        debugPrint('Something changed in Title Text Field');
                      //  updateTitle();
                      },
                      decoration: InputDecoration(
                          labelText: 'Title',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: TextField(
                      controller: descriptionController,

                      onChanged: (value)
                      {
                        debugPrint('Something changed in Description Text Field');
                       // updateDescription();
                      },
                      decoration: InputDecoration(
                          labelText: 'Description',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: ElevatedButton(

                            child: Text('Save', textScaleFactor: 1.5,),
                            onPressed: ()
                            {
                              setState(()
                              {
                                debugPrint("Save button clicked");
                                _save();
                              });
                            },
                          ),
                        ),




                      ],
                    ),
                  ),


                ],

            ),

          ),

      );


  }

  void _save() async
  {
    int result=0;
    note.date = DateFormat.yMMMd().format(DateTime.now());
    result = await helper.insertnote(note);
    if (result != 0) {  // Success
      print( 'Note Saved Successfully');
    } else {  // Failure
      print( 'Problem Saving Note');
    }
  }


}
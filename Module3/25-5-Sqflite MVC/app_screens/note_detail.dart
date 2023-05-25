//@dart=2.9
import 'package:flutter/material.dart';
import '../model/Note.dart';
import '../utils/database_helper.dart';

class NoteDetail extends StatefulWidget
{
  final String appBarTitle;
  final Note note;

  NoteDetail(this. note, this.appBarTitle);


  @override
  State<StatefulWidget> createState()
  {
    return NoteDetailState(this.note, this.appBarTitle);
  }

}
class NoteDetailState extends State<NoteDetail> {

  static var _priorities = ['High', 'Low'];
  DatabaseHelper helper = DatabaseHelper();

  String appBarTitle;
  Note note;

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  NoteDetailState(this.note, this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme
        .of(context)
        .textTheme
        .subtitle1;

    titleController.text = note.title;
    descriptionController.text = note.description;

    return WillPopScope(

        onWillPop: () {
          // Write some code to control things, when user press Back navigation button in device navigationBar
          moveToLastScreen();
        },
        child: Scaffold(

          appBar: AppBar
            (
            title: Text(appBarTitle),
            leading: IconButton(icon: Icon(
                Icons.arrow_back),
                onPressed: () {
                  // Write some code to control things, when user press back button in AppBar
                  moveToLastScreen();
                }
            ),),
          body: Padding(

            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[

                ListTile(
                  title: DropdownButton(
                      items: _priorities.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),

                      style: textStyle,

                      value: getPriorityAsString(note.priority),

                      onChanged: (valueSelectedByUser) {
                        setState(() {
                          debugPrint('User selected $valueSelectedByUser');
                          //updatePriorityAsInt(valueSelectedByUser);
                        });
                      }
                  ),
                ),

                //2nd

                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: titleController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint('Something changed in Title Text Field');
                      updateTitle();
                    },
                    decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  ),
                ),

                //3rd

                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: descriptionController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint('Something changed in Description Text Field');
                      updateDescription();
                    },
                    decoration: InputDecoration(
                        labelText: 'Description',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  ),
                ),

                //4th

                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(

                          child: Text
                            (
                            'Save',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint("Save button clicked");
                              _save();
                            });
                          },
                        ),
                      ),
                      Container(width: 5.0,),
                      Expanded(
                        child: ElevatedButton(

                          child: Text(
                            'Delete',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint("Delete button clicked");
                              //_delete();
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

        ));
  }

  //move to last screen
  void moveToLastScreen() {
    Navigator.pop(context, true);
  }

  //priority
  String getPriorityAsString(int value) {
    String priority;
    switch (value) {
      case 1:
        priority = _priorities[0];  // 'High'
        break;
      case 2:
        priority = _priorities[1];  // 'Low'
        break;
    }
    return priority;
  }

  // Update the title of Note object
  void updateTitle(){
    note.title = titleController.text;
  }

  // Update the description of Note object
  void updateDescription() {
    note.description = descriptionController.text;
  }

  void _save() async
  {

      moveToLastScreen();
      //note.date = Datef.yMMMd().format(DateTime.now());

      int result;
      result = await helper.insertNote(note);


      if (result != 0)
      {  // Success
        _showAlertDialog('Status', 'Note Saved Successfully');
      }
      else
      {  // Failure
        _showAlertDialog('Status', 'Problem Saving Note');
      }
  }

  void _showAlertDialog(String title, String message)
  {


    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(
        context: context,
        builder: (_) => alertDialog
    );
  }



}
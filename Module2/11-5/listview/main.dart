//@dart=2.9
import 'package:flutter/material.dart';

import 'dynamicList.dart';
//Static Listview
void main()
{
  runApp(MaterialApp(home: DynamicListview()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basic Listview"),),
      body: getlistview(),

    );
  }
  //static
  Widget getlistview() {
    var listView = ListView(children: [

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View !"),
        trailing: Icon(Icons.wb_sunny),
        onTap: ()
        {
          debugPrint("Landscape tapped");
        },
      ),

      ListTile(
        leading: Icon(Icons.accessible_forward_sharp),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View !"),
        trailing: Icon(Icons.sunny_snowing),
        onTap: ()
        {
          debugPrint("Landscape tapped");
        },
      ),


    ],);


    return listView;
  }
}

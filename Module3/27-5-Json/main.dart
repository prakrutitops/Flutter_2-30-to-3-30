//@dart=2.9
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Items.dart';
void main()
{
  runApp( MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget
{
  List list;
  int index;

  MyApp({this.list, this.index});


  @override
  MyAppState createState() => MyAppState();

}

class MyAppState extends State<MyApp>
{
  List list;

  Future<List> getData() async
  {
    final responce = await http.get("https://vyasprakruti.000webhostapp.com/InventorymanaementSystem/productview.php");
    return jsonDecode(responce.body);
  }


  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(
          title: Text("My Details"),
        ),
      body:  FutureBuilder<List>(

        future: getData(),
    builder: (ctx,ss) {
      if (ss.hasError) {
        print("error");
      }
      if (ss.hasData) {
        return Items(list: ss.data);
      }
      else
        {
          return CircularProgressIndicator();
        }


    }


      )
      );
  }

}

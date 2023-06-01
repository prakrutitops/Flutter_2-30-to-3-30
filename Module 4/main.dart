//@dart=2.9
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main()
{
  runApp( MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget
{
  @override
  MyAppState createState() => MyAppState();

}

class MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("View Details"),),
      body: FutureBuilder<List>(
          future: getdetail(),
          builder:(ctx,ss){

              if(ss.hasData)
              {

                return Items(list:ss.data);

              }
              if(ss.hasError)
              {
                  print('Network Not Found');
              }

              return CircularProgressIndicator();



          }),
    );


  }

  Future<List>getdetail()async
  {
      var response = await http.get(Uri.parse("https://nitesh6226.000webhostapp.com/Api/view.php"));
      return jsonDecode(response.body);
  }

}

class Items extends StatelessWidget
{
  List list;
  Items({this.list});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(

        itemCount: list==null?0:list.length,
        itemBuilder: (ctx,i)
        {

            return ListTile(

                title: Text(list[i]['name']),
                subtitle: Text(list[i]['surname'])
            );

        }


    );
  }

}

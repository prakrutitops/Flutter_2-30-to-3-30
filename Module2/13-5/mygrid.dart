import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridData extends StatelessWidget
{
  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];

  @override
  Widget build(BuildContext context)
  {

      return Scaffold(
        appBar: AppBar
          (
            title: Text("Flutter GridView Demo"),
            backgroundColor: Colors.red,
          ),
          body: Container(

            padding: EdgeInsets.all(12.0),
            child: ListView.builder(itemCount: images.length,/*gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0)*/
              itemBuilder: (BuildContext context, int index){
                return Image.network(images[index]);
              },),),


      );

  }

}
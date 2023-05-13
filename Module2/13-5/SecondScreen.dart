//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model.dart';

class SecondScreen extends StatelessWidget
{
  final String text;
  SecondScreen({Key key, @required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen"),),
      body: Padding
        (
          padding: EdgeInsets.all(16.0),
          child: Text(text),
        ),

    );
  }

}
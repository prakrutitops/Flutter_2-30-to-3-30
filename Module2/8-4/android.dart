import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/flutter.dart';
import 'package:project1/ios.dart';

class Android extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar
          (
            title: Text("Android Page"),
          ),
          body: Center(

              child: ElevatedButton
                (
                  onPressed: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Flutter()));
                  },
                  child: Text("Android Data"),


                ),

          ),

    );
  }

}
//@dart=2.9


import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraFile extends StatelessWidget
{


  @override
  Widget build(BuildContext context)
  {

      return Scaffold(
        appBar: AppBar(

          title: Text("My Camera"),
        ),

        body: Padding(
            padding: EdgeInsets.all(25.0),
            child: ElevatedButton(onPressed: () {



            }, child: Text("Open Camera"),


            ),

        ),



      );

  }



}
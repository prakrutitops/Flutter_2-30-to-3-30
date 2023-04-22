//@dart=2.9
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'camerafile.dart';

class SecondScreen extends StatelessWidget
{
  File cameraFile;



  @override
  Widget build(BuildContext context) {

    return Scaffold(

    /*  appBar: AppBar
        (
        title: Text("Second Screen"),
      ),*/
      body: Center(

        child: ElevatedButton(

          onPressed: () {

            selectfromcamera();

          }, child: Text("Click "),


        ),

      ),

    );

  }
  void selectfromcamera()async
  {
    cameraFile=(await ImagePicker().pickImage(source: ImageSource.camera,)) as File;
  }

}
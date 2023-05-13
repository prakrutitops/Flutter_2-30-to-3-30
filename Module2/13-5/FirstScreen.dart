//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled11/SecondScreen.dart';

import 'Model.dart';

class FirstScreen extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
          appBar: AppBar(title: Text("First Screen"),),
          body: Center(

            child: Column(

              children: [

                  TextField(decoration: InputDecoration(hintText: "Enter Value"),),
                  ElevatedButton(onPressed: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(text: "tops",),
                      ),
                    );
                  }, child: Text("Click"))


              ],

            ),

          ),

      );
  }

}
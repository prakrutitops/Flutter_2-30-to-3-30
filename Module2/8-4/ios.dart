import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ios extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar
        (
          title: Text("IOS Page"),
        ),
        body: Center(


            child: Text
              (
                "Prakruti",

                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.w700 ,
                  fontStyle:FontStyle.italic,
                  wordSpacing:20,
                  letterSpacing:8,
                  backgroundColor: Colors.blueAccent,
                  shadows: [

                    Shadow(color: Colors.blueAccent, offset: Offset(2,1), blurRadius:10)

                  ]
                ),


            ),


        ),

    );
  }

}
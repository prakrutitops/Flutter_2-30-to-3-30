//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/second.dart';

import 'first.dart';

class TabView extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

      return MaterialApp(

          home: DefaultTabController(length: 2,
            child: Scaffold(
              appBar: AppBar
                (
                title: Text("Selection"),
                bottom: TabBar(
                  tabs:
                  [
                    Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
                    Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")

                  ],
                ),




            ),

              body: TabBarView(

                          children: [
                          FirstScreen(),
                          SecondScreen(),
                          ],

                ),
              
            
          )

      )
      );


  }

}
//@dart=2.9
import 'package:flutter/material.dart';
import 'package:untitled4/tabview.dart';

void main()
{
  runApp(TabView());
}
enum BestTutorSite { javatpoint,geeksforgeeks,tutorialandexample}
class MyApp extends StatefulWidget
{
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>
{
  BestTutorSite _site = BestTutorSite.javatpoint;

  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(

            home: Scaffold(

                body:  Center(

                    child: Column(

                        children: [

                          ListTile(
                            title: const Text('www.javatpoint.com'),
                            leading: Radio(
                              value: BestTutorSite.javatpoint,
                              groupValue: _site,
                              onChanged: (BestTutorSite value) {
                                setState(() {
                                  _site = value;
                                });
                              },
                            ),
                          ),

                          ListTile(
                            title: const Text('www.tutorialspoint.com'),
                            leading: Radio(
                              value: BestTutorSite.tutorialandexample,
                              groupValue: _site,
                              onChanged: (BestTutorSite value) {
                                setState(() {
                                  _site = value;
                                });
                              },
                            ),
                          ),

                          ListTile(
                            title: const Text('www.geeks.com'),
                            leading: Radio(
                              value: BestTutorSite.geeksforgeeks,
                              groupValue: _site,
                              onChanged: (BestTutorSite value) {
                                setState(() {
                                  _site = value;
                                });
                              },
                            ),
                          ),


                        ],

                    ),

                ),




            ),

      );
  }

}

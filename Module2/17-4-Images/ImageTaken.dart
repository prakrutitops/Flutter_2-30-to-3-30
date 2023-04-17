import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyImage extends StatefulWidget
{
  @override
  MyImageState createState() => MyImageState();

}
class MyImageState extends State<MyImage>
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
              body: Center
                (

                  child: Padding
                    (
                      padding: EdgeInsets.all(55.0),
                      child: Column
                      (
                        children: [

                        Image.asset('images/flag1.png'),

                        SizedBox
                      (
                        width: 100,
                        height: 100,
                      ),
                      Image.asset('images/a.jpg'),

                          SizedBox
                            (
                            width: 100,
                            height: 100,
                          ),

                          Image.network("https://vyasprakruti.000webhostapp.com/images/abc.jpg",width: 250,height: 250,)

                    ],

                  ),

                ),

        ));
  }

}
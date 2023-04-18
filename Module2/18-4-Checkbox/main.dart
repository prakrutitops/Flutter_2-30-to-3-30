//@dart=2.9
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';

void main()
{
  runApp(
      MaterialApp
        (

          theme: ThemeData
            (
              scaffoldBackgroundColor: const Color(0xFFEFEFEF)
            ),
          home:MyApp()

        ));
}

class MyApp extends StatefulWidget
{

  @override
  MyState createState() => MyState();

}
class MyState extends State<MyApp>
{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 8),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold
      (

      //appBar: AppBar(title: Text("Cafe Shop"),),
      body: Padding(

          padding: EdgeInsets.all(50.0),


          child:Center
            (

              child://Lottie.asset('assets/myanim.json')
              Lottie.network('https://vyasprakruti.000webhostapp.com/images/46469-coffeshop-logo-animation.json')

          )

      ),

    );

  }

}

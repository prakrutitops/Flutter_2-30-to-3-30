//@dart=2.9
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formexample/login.dart';

class SplashScreen extends StatefulWidget
{
  @override
  SplashState createState()  => SplashState();
}
class SplashState extends State<SplashScreen>
{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login())));

  }

  @override
  Widget build(BuildContext context)
  {
      return Container(

            color: Colors.white,
            child: FlutterLogo(size: MediaQuery.of(context).size.height),

      );
  }

}
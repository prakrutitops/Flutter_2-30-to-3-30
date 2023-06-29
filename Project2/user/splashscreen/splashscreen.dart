//@dart=2.9
import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import '../../constants.dart';
import '../onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget
{
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
{

  @override
  void initState()
  {
    // TODO: implement initState
   //

    checkConnection();
    super.initState();

  }

  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
          backgroundColor: kLightGold,
            body: Center(

                child: Image
                  (
                    image: AssetImage("images/logo.png"),
                    height: MediaQuery.of(context).size.height - 360,
                    width: MediaQuery.of(context).size.width - 330
                 ),


            )
          

        );
  }

  void checkConnection() async
  {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.mobile)
    {
      check_if_already_login();
    }
    else if (connectivityResult == ConnectivityResult.wifi)
    {
      check_if_already_login();
    }
    else
    {
      _showConnectionDialog();
    }
  }

  void check_if_already_login()
  {

    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Onboarding())),);

  }
  void _showConnectionDialog() async
  {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: kGrey,
          title: Row(children: [Icon(Icons.error),Text("\t Network Error")],),
          content: Text('Please check your internet connection.',style: TextStyle(fontStyle: FontStyle.italic)),
          actions: <Widget>[
            ElevatedButton(
              onPressed: ()
              {
                exit(0);
              },
              child: Text("Exit",style: TextStyle(color: Colors.grey)),
            ),
          ],
        );
      },
    );
  }
}
//@dart=2.9
import 'package:flutter/material.dart';
import 'package:formexample/splash.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (

        theme: ThemeData
          (
            brightness: Brightness.dark

          ),
        home: SplashScreen()

      );
  }

}

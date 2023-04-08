import 'package:flutter/material.dart';
import 'package:project1/android.dart';
import 'package:project1/flutter.dart';
import 'package:project1/ios.dart';

void main()
{
  runApp(FirstApp());
}
class FirstApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp
        (

            home: Android() ,

        );
  }

}


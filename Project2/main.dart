//@dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projectex1/screens/user/splashscreen/splashscreen.dart';



void main()
{
  //WidgetsFlutterBinding.ensureInitialized();
   //Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp
        (
            debugShowCheckedModeBanner: false,
            title: 'E wishes',
            home: SplashScreen(),
        );


  }

}

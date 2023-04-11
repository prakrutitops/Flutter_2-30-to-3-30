import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget
{
  @override
  MyState createState()  => MyState();
}

class MyState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
        return MaterialApp(

            home: Scaffold(
                appBar: AppBar
                  (
                    title: Text("Myform"),
                  ),
              body: Padding
                (
                padding: EdgeInsets.all(35),
                child:Column(

                  children: [

                          Padding
                            (
                            padding: EdgeInsets.all(15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'User Name',
                                hintText: 'Enter Your Name',
                              ),
                            ),

                          ),

                    Padding
                      (
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter Your Password',
                        ),
                      ),

                    ),
                    ElevatedButton(onPressed: ()
                    {

                      print('clicked');


                    },
                    child: Text("Login"))

                  ],

                )

                ),




            ),

        );
  }

}


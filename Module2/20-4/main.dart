//@dart=2.9
import 'package:flutter/material.dart';
import 'package:untitled3/SliderEx.dart';

void main()
{
  runApp
    (
      MaterialApp
        (
          home: MySliderEx()

        )
    );
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (

        appBar: AppBar(title: Text("Alert Example")),
         body: Center(

            child: ElevatedButton(onPressed: () {

                myalert(context);

            }, child: Text("Submit"),),

         )


      );
  }

    void myalert(BuildContext context)
    {
      //Create Ok Button
        Widget okbtn =TextButton(onPressed: ()
        {

          Navigator.of(context).pop();


        }, child: Text("OK"),);


        Widget txtfld =
        TextField(style: TextStyle(color: Colors.black),);


        AlertDialog alertDialog = AlertDialog(
          title: Text("Simple Alert"),
          content: Text("This is an alert message."),actions: [txtfld,okbtn],);


        showDialog(context: context, builder:(BuildContext context)
            {
              return alertDialog;
            });


    }

}



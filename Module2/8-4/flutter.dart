import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project1/ios.dart';

class Flutter extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar
          (

          title: Text("Flutter Page"),

          ),
          body: Center(

              child: TextButton(
                onPressed: ()
                {
                    mytoastmsg();

                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Ios()));


                },
                child: Text("Submit"),

              ),

          ),
      );
  }

  void mytoastmsg()
  {
      Fluttertoast.showToast
        (
                        msg: "Welcome",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.yellow



      );

  }

}
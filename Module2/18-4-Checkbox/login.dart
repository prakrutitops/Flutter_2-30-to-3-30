//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cafeEx.dart';

class Login extends StatefulWidget
{

  @override
  LoginState createState() => LoginState();
}
class LoginState extends State<Login>
{

  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  String email,number,pass;
  @override
  Widget build(BuildContext context)
  {

      return Scaffold(
          appBar: AppBar
            (
               title: Text("Cafe Orderting App"),
            ),
          body: Padding
            (
              padding: EdgeInsets.all(15.0),
              child: Form(
                key: _formKey,
                child: Column(

                  children: [

                    Text(
                      "Form-Validation In Flutter ",
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox
                      (
                      height: MediaQuery.of(context).size.width * 0.1,
                      ),
                    TextFormField
                      (
                      decoration: InputDecoration(labelText: 'E-Mail'),
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (value)
                      {
                          email = value.toString();

                      },
                      onSaved: (value)
                      {
                        email = value.toString();
                      },
                      validator: (value)
                      {
                        if (value.isEmpty || !RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value))
                        {

                          return 'Enter a valid email!';
                        }
                        print(email);
                        return null;
                      },
                      ),
                    SizedBox
                      (
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                    TextFormField
                      (
                      decoration: InputDecoration(labelText: 'Mobile Number'),
                      keyboardType: TextInputType.number,
                      onFieldSubmitted: (value)
                      {


                      },
                      onSaved: (value)
                      {
                        number = value.toString();
                      },
                      validator: (value)
                      {
                        if (value.isEmpty)
                        {
                          return 'Enter a Mobile Number!';
                        }
                        return null;
                      },
                     ),
                    SizedBox
                      (
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                    TextFormField
                      (
                      decoration: InputDecoration(labelText: 'Password'),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      onFieldSubmitted: (value)
                      {
                          pass = value.toString();
                      },
                      onSaved: (value)
                      {
                        pass = value.toString();
                      },
                      validator: (value)
                      {
                        if (value.isEmpty)
                        {
                          return 'Enter a valid Password!';
                        }
                        return null;
                      },
                      ),

                    SizedBox
                      (
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),

                    ElevatedButton(onPressed: ()
                    {
                        _submit();

                    }, child: Text("Login"))



                  ],

                ),

              ),
            ),
      );
  }

  void _submit()
  {
    final isValid = _formKey.currentState.validate();
    if (!isValid)
    {
      return;
    }
    else
      {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CafeFile()));
      }



  }

}
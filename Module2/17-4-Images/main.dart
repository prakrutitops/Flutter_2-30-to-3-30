//@dart=2.9
import 'package:flutter/material.dart';

import 'ImageTaken.dart';

void main()
{
  runApp(
      MaterialApp
        (
          home: MyImage(),
        )
    );//1.
}

class MyApp extends StatefulWidget
{
  //4. oVerride Method -Alt+Enter
  @override
  LoginState createState() => LoginState();


}
//2. create Class for state
class LoginState extends State<MyApp>
{
  //25.

  var _formKey = GlobalKey<FormState>();

  //21.
  String email,phone,pass;

  //3.
  @override
  Widget build(BuildContext context) {

    ///5.
    return Scaffold(
        //6.
        appBar: AppBar(title: Text("Login Form")),
        //7.
        body: Padding
          (
          padding: EdgeInsets.all(15.0),
          child: Form(

            key: _formKey,
            //8.
              child: Column(
                  //9.
                  children: [
                      //10.
                      Text("Form-Validation In Flutter",
                          style: TextStyle
                            (
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                            ),
                    //11.
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                    //12.
                    TextFormField
                      (

                      decoration: InputDecoration(labelText: 'E-Mail'),
                      keyboardType: TextInputType.emailAddress,

                      onFieldSubmitted: (value)
                      {

                      },

                      //20.
                      onSaved: (value)
                      {
                            email = value.toString();
                      },
                      validator: (value)
                      {
                        if (value.isEmpty)
                        {
                          return 'Enter Proper Email Id!';
                        }
                        return null;
                      },

                      ),
                    //13.
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                    //14.
                    TextFormField
                      (

                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,

                      onFieldSubmitted: (value)
                      {

                      },
                      //22.
                      onSaved: (value)
                      {
                        pass = value.toString();
                      },
                      validator: (value)
                      {
                        if (value.isEmpty)
                        {
                          return 'Enter Proper Password!';
                        }
                        return null;
                      },

                    ),
                    //15.
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                  //16.
                    TextFormField
                      (

                      decoration: InputDecoration(labelText: 'Mobile Number'),
                      keyboardType: TextInputType.phone,

                      onFieldSubmitted: (value)
                      {

                      },
                      //23.
                      onSaved: (value)
                      {
                        phone = value.toString();
                      },
                      validator: (value)
                      {
                        if (value.isEmpty)
                        {
                          return 'Enter Proper Mobile Number!';
                        }
                        return null;
                      },
                    ),
                    //17.
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                    //18.
                    ElevatedButton(onPressed: (){

                      //19.
                       _submit();

                    }, child: Text("Login")
                    )

                  ],

              ),


          ),
        ),


    );

  }
//24.
  void _submit()
  {
    //25.
    final isok = _formKey.currentState.validate();

    //26.
    if(!isok)
    {
      return;
    }
    else
    {
      print('$email , $phone , $pass');
    }


  }

}
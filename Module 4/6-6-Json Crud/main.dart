//@dart=2.9
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud2/view.dart';
void main()
{
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget
{
  @override
  MyAppState createState() => MyAppState();

}

class MyAppState extends State<MyApp>
{
  TextEditingController pname = new TextEditingController();
  TextEditingController pprice = new TextEditingController();
  TextEditingController pded = new TextEditingController();

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          appBar: AppBar(title: Text("Add Details"),),
          body: ListView(
            children: [
              TextField(
                controller: pname ,
                decoration: InputDecoration(hintText: "Enter Product Name",labelText: "Enter Product Name"),
              ),
              TextField(
                controller: pprice,
                decoration: InputDecoration(hintText: "Enter Product Price",labelText: "Enter Product Price"),
              ),

              TextField(
                controller: pded,
                decoration: InputDecoration(hintText: "Enter product description",labelText: "Enter product description"),
              ),
              MaterialButton(

                child: Text("Add Data"),
                color:  Colors.red,
                onPressed: (){
                  insertdata();
                  print('Inserted');
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context)=>MyView()),
                  );
                },
              ),
            ],
          ),

      );
  }

  void insertdata()
  {

    var url=Uri.parse("https://nitesh6226.000webhostapp.com/Api/insert.php");
    http.post(url,body: {

      "p_name":pname.text.toString(),
      "p_price":pprice.text.toString(),
      "p_des":pded.text.toString(),


    });


  }

}

//@dart=2.9
import 'package:flutter/material.dart';
import 'package:jsoncrud2/view.dart';
import 'package:http/http.dart' as http;
class Edit extends StatefulWidget
{
  final List list;
  final int index;


  Edit({this.list, this.index});


  @override
  _EditState createState() => _EditState();

}

class _EditState  extends State<Edit>
{
  TextEditingController name;
  TextEditingController price;
  TextEditingController des;


  @override
  void initState() {
    // TODO: implement initState
    name = TextEditingController(text: widget.list[widget.index]['p_name']);
    price = TextEditingController(text: widget.list[widget.index]['p_price']);
    des = TextEditingController(text: widget.list[widget.index]['p_des']);

    super.initState();
  }


  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar:  AppBar(

          title: Text("Edit Data ${widget.list[widget.index]['p_name']}"),
        ),

        body: ListView(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(hintText: "Enter Product Name",labelText: "Enter Name"),
            ),
            TextField(
              controller: price,
              decoration: InputDecoration(hintText: "Enter Product Price",labelText: "Enter Price"),

            ),

            TextField(
              controller: des,
              decoration: InputDecoration(hintText: "Enter Product Description",labelText: "Enter Description"),

            ),

            MaterialButton(
              child: Text("Edit Data"),
              onPressed: (){
                editData();
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=> MyView()),
                );
              },
            )
          ],
        ),
      );
  }

  void editData()
  {
      var url ="https://nitesh6226.000webhostapp.com/Api/update.php";
      http.post(url,body: {

        'id':widget.list[widget.index]['id'],
        'p_name': name.text.toString(),
        'p_price': price.text.toString(),
        'p_des':des.text.toString(),
      });


  }

}
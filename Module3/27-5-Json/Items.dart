//@dart=2.9
import 'package:flutter/material.dart';

class Items extends StatelessWidget {

  List list;

  Items({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list==null?0:list.length,
        itemBuilder: (ctx,i)
    {
      return ListView.builder(
          itemCount: list == null ? 0 : list.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(

              elevation: 5,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(

                child: Column(

                  children: [

                    Text(list[index]['product_name'],
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      list[index]['product_price'],
                      style: TextStyle(fontSize: 20.0),
                    ),


                  ],


                ),


              ),


            );
          }
      );
    });
  }
}

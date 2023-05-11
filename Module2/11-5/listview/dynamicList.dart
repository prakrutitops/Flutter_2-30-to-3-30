//@dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class DynamicListview extends StatefulWidget
{
  @override
  DynamicState createState() => DynamicState();
}

class DynamicState  extends State<DynamicListview>
{




  @override
  Widget build(BuildContext context)
  {

    List<Model>mobilelist=new List();

    mobilelist.add(Model("https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile1", "1111"));
    mobilelist.add(Model("https://vyasprakruti.000webhostapp.com/images/mob2.jpg", "Mobile2", "1221"));
    mobilelist.add(Model("https://vyasprakruti.000webhostapp.com/images/mob3.jpg", "Mobile3", "3333"));

    ListView listView = ListView.separated(
      //  padding: const EdgeInsets.all(8.0),
      itemCount: mobilelist.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 300,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    Image.network(mobilelist[index].image,width: 100,height: 100,),

                    Text(
                      mobilelist[index].name,
                      style: TextStyle
                        (
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        ),
                    ),
                    Text(
                      mobilelist[index].price,
                      style: TextStyle(fontSize: 10),
                    ),

                  ],
                ),
                //flex: 1,
              ),




            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
    Container listViewContainer = new Container(
      height: double.infinity,
      child: listView,
    );

    return SizedBox(
        child: Column(
          children: <Widget>[

            Flexible(
              child: listViewContainer,
              flex: 1,
            ),
          ],
        ));
  }
}
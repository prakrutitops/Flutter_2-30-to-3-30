//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CafeFile extends StatefulWidget
{
  @override
  CafeState createState() => CafeState();


}
class CafeState extends State<CafeFile>
{

  bool one = false;
  bool two = false;
  bool three = false;
  var total =0;
  var data="";
  var amount =0;

  @override
  Widget build(BuildContext context)
  {

      return Scaffold
        (
          appBar: AppBar(title:Text("Cafe Orderting App"),),
          body: Container
            (
            padding: new EdgeInsets.all(22.0),
            child: Column(

              children: [

                SizedBox(width: 10,),
                Text('Menu',style: TextStyle(fontSize: 20.0), ),
                SizedBox(width: 10,),
                CheckboxListTile(
                    //secondary: Image.asset("",width: 250,height: 250,),
                    title: const Text('Pizza'),
                    subtitle: Text('Rs.100'),
                    value: this.one,
                    onChanged: (bool value)
                    {
                        setState(()
                        {
                          this.one = value;
                          amount+=100;
                          data+="\n Pizza @ rs.100";

                        });
                    }



                ),

                CheckboxListTile(
                  //secondary: Image.asset("",width: 250,height: 250,),
                    title: const Text('Burger'),
                    subtitle: Text('Rs.70'),
                    value: this.two,
                    onChanged: (bool value)
                    {
                      setState(()
                      {
                        this.two = value;
                        amount+=70;
                        data+="\n Burger @ rs.70";

                      });
                    }



                ),
                CheckboxListTile(
                  //secondary: Image.asset("",width: 250,height: 250,),
                    //secondary: const Icon(Icons.food_bank),
                    title: const Text('Coffee'),
                    subtitle: Text('Rs.120'),
                    value: this.three,
                    onChanged: (bool value)
                    {
                      setState(()
                      {
                        this.three = value;
                        amount+=120;
                        data+="\n Coffee @ rs.120";

                      });
                    }



                ),
                ElevatedButton
                  (
                    onPressed: ()
                    {

                        print("\n Bill \n $data \n Total: $amount");


                    },
                    child: Text("Order")
                  )



              ],

            ),
            ),
        );


  }

}
//@dart=2.9
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySliderEx extends StatefulWidget
{
  @override
  SliderState createState() => SliderState();


}
class SliderState extends State<MySliderEx>
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(title: Text("Slider"),),
        body: ListView(

          children: [

             CarouselSlider(

                  items: [

              //1st Image of Slider
              Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://nitesh6226.000webhostapp.com/images/a.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage("https://nitesh6226.000webhostapp.com/images/abc.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage("https://nitesh6226.000webhostapp.com/images/a.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage("https://nitesh6226.000webhostapp.com/images/abc.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),




                ],
               options: CarouselOptions(
                 height: 300.0,
                 enlargeCenterPage: true,
                 autoPlay: true,
                 aspectRatio: 16 / 9,
                 autoPlayCurve: Curves.elasticIn,
                 enableInfiniteScroll: true,
                 autoPlayAnimationDuration: Duration(milliseconds: 2000),
                 viewportFraction: 0.8,
               ),

            )],

        ),


      );
  }

}
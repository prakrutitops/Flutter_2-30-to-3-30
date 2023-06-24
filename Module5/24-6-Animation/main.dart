import 'package:flutter/material.dart';

void main()
{
  runApp( MyApp());
}

class MyApp extends StatefulWidget
{


  @override
  MyState createState() => MyState();


}

class MyState extends State<MyApp> with SingleTickerProviderStateMixin
{
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //controller = AnimationController(vsync:, duration: Duration(seconds: 2));
    controller = AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 255)
        .chain(CurveTween(curve: Curves.bounceIn))
        .animate(controller)
               ..addListener(()
               {
                  setState(() {});
               })
            ..addStatusListener((status)
            {
              if (status == AnimationStatus.completed) {
                  controller.reverse();
                }
              else if (status == AnimationStatus.dismissed)
              {
                 controller.forward();
              }
              controller.forward();
      });


  }

  void startAnimation() {
    controller.forward();
  }
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(
          home: Scaffold
              (
                appBar: AppBar(title: Text("Aniamtion Example"),),

                  body: Center
                  (

                     // child: Image.asset("assets/a.jpg",width: animation.value,height: animation.value)
                      /*  (
                          color: Colors.orange,
                          height: animation.value,
                          width: animation.value,

                        )*/

                    child: Container(
                      color: Colors.orange,
                      height: animation.value,
                      width: animation.value,),




    ),floatingActionButton: FloatingActionButton(
            onPressed: startAnimation,
            tooltip: 'Start',
            child: Icon(Icons.play_arrow),

          )),);


  }

  @override
  void dispose()
  {
    // TODO: implement dispose
    //controller.dispose();
    super.dispose();
  }

}

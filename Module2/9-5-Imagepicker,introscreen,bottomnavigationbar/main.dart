//@dart=2.9
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'IntroFile.dart';
import 'cameraEx.dart';

void main()
{
  runApp(MaterialApp(home:MyBottomNavigation()));
}

class MyApp extends StatefulWidget
{
  @override
  MyState createState() => MyState();


}

class MyState extends State<MyApp>
{

  XFile galleryfile;
  ImagePicker imagePicker =new ImagePicker();

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        appBar: AppBar(title: Text("My Gallery App"),),

        body: Center(

          child: Column(

              children: [

                    ElevatedButton(onPressed: ()
                {
                    myimagepicker();
                },
                child: Text("Click Here"),
            ),
                SizedBox(width: 100,height: 100),

           galleryfile == null ? Center(child: new Text('Sorry nothing selected!!')) : Center(child: new Text('$galleryfile')),
              ],
          ),

        )
      );


  }

  void myimagepicker() async
  {

    galleryfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {});
    print("Path is $galleryfile");

  }

}

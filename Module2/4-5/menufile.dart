import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(
            title: Text("Menu Example"),
            centerTitle: true,
            actions: [

                Theme
                  (
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.white,
                    iconTheme: IconThemeData(color: Colors.white),
                    textTheme: TextTheme().apply(bodyColor: Colors.white),
                  ),

                  child: PopupMenuButton<int>(

                    color: Colors.indigo,
                    onSelected: (item) => onSelected(context, item),
                    itemBuilder: (context) =>
                    [
                      PopupMenuItem<int>(
                      value: 0,
                      child: Text('Settings'),
                    ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Text('Share'),
                      ),
                      PopupMenuDivider(),
                      PopupMenuItem<int>(
                        value: 2,
                        child: Row(
                          children: [
                            Icon(Icons.logout),
                            const SizedBox(width: 8),
                            Text('Sign Out'),
                          ],
                        ),
                      ),

                ]),
                ),
            ],





    ));

  }

  onSelected(BuildContext context, int item)
  {
    switch (item) {
      case 0:
        print('1');
        break;
      case 1:
       /* Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SharePage()),
        );*/
        print('2');
        break;
      case 2:
        /*Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginPage()),
              (route) => false,
        );*/
        print('3');
    }
  }

  }


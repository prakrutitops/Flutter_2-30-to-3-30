//@dart=2.9

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../constants.dart';

import '../bottom_navigation/download/download.dart';
import '../bottom_navigation/home/home.dart';
import '../login/login.dart';

class Front extends StatefulWidget
{
  @override
  FrontPage createState() => FrontPage();
}

class FrontPage extends State<Front>
{

  int _selectedIndex = 0;
  SharedPreferences logindata;
  String username;

  static List<Widget> _widgetOptions = <Widget>
  [
    Home(),
    Download(),
  ];

  void _onItemTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('E wishes Welcome to $username', style: TextStyle(color: kGold),),
        backgroundColor: kDarkBrown,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              color: kGold,
            ),
            onPressed: () {
              logindata.setBool('login', true);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: kLightGold,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
              label: 'Download'
            //title: Text('Download'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kGold,
        backgroundColor: kDarkBrown,
        unselectedItemColor: kTerracotta,
        onTap: _onItemTapped,
      ),
    );
  }
  void initial()async
  {

    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username');
    });


  }
}
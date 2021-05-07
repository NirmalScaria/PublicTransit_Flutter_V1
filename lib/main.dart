import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mySearchBus.dart';
import 'myRemainingOptions.dart';
import 'myTabList.dart';
import 'myCatchAndBook.dart';
import 'myBottomBar.dart';
import 'myGeoloc.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0XFFE5EEFC), // navigation bar color
    statusBarColor: Color(0XFFE5EEFC), // status bar color
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  Future<Map<String, double>> _getLocation() async {
    var currentLocation = <String, double>{};
    try {
      currentLocation = await location.getLocation();
    } catch (e) {
      currentLocation = null;
    }
    return currentLocation;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hi",
        home: new Scaffold(

            //resizeToAvoidBottomPadding: false,
            backgroundColor: Color(0XFFF5F7FE),
            body: new Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TabList(),
                CatchAndBook(),
                SearchBus(),
                RemainingOptions(),
                BottomTabList(),
              ],
            )));
  }
}

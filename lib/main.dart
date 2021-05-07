import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mySearchBus.dart';
import 'myRemainingOptions.dart';
import 'myTabList.dart';
import 'myCatchAndBook.dart';
import 'myBottomBar.dart';
import 'myGeoloc.dart';
import 'package:http/http.dart' as http;

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
    _getLocation().then((value) {
      setState(() {
        userLocation = value;
        _getResponse().then((value) {
          setState(() {
            resptext = value;
          });
        });
      });
    });
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

  Future<String> _getResponse() async {
    var url = Uri.parse("http://65.1.230.169/api/findclosest.php");
    var response = await http.post(url, body: {
      "gx": userLocation["latitude"].toString(),
      "gy": userLocation["longitude"].toString()
    });
    resptext = response.body;
    return (resptext);
    //HERE IS THE REMAINING
    // Make this resptext variable a list. Get all the suggestions. Use it where it is needed.
    //Change the server side code to give list instead of one value.
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

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manuel/mySearchBus.dart';
import 'myRemainingOptions.dart';
import 'myTabList.dart';
import 'myCatchAndBook.dart';
import 'myBottomBar.dart';
void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0XFFE5EEFC), // navigation bar color
    statusBarColor: Color(0XFFE5EEFC), // status bar color
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hi",
        home: new Scaffold(
            resizeToAvoidBottomPadding: false,
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

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Departorreach extends StatefulWidget {
  @override
  _DepartorreachState createState() => _DepartorreachState();
}

class _DepartorreachState extends State<Departorreach> {
  int selectedchoice = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (selectedchoice == 0) {
            selectedchoice = 1;
          } else {
            selectedchoice = 0;
          }
        });
      },
      child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Color(0XFFF5F7FE),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  offset: const Offset(-5.0, -5.0),
                  blurRadius: 6.0,
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.17),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 6.0,
                )
              ]),
          child: Stack(children: 
          [
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              
                curve: Curves.fastOutSlowIn,
                margin:selectedchoice == 1
                        ? EdgeInsets.only(left:47) : EdgeInsets.only(left:0),
              decoration: BoxDecoration(
                    //color: Color(0XFFF5F7FE),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Color(0XFF64BFB5),
                      width: 1,
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0XFFF5F7FE), Color(0XFFDFE6FF)]),
                  ),
                  height:25,
                  width:50,
              ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(7),
                  /*decoration: BoxDecoration(
                    //color: Color(0XFFF5F7FE),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Color(0XFF64BFB5),
                      width: 1,
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0XFFF5F7FE), Color(0XFFD0F9F6)]),
                  ),*/
                  child: AnimatedDefaultTextStyle(
                    curve: Curves.fastOutSlowIn,
                    duration: const Duration(milliseconds: 500),
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      color: selectedchoice == 0
                          ? Color(0XFF69CCC1)
                          : Color(0XFF4B525C),
                      letterSpacing: .5,
                      fontWeight: FontWeight.w900,
                      fontSize: 9,
                    )),
                    child: Text(
                      "DEPART",
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                AnimatedDefaultTextStyle(
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(milliseconds: 500),
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    color: selectedchoice == 1
                        ? Color(0XFF69CCC1)
                        : Color(0XFF4B525C),
                    letterSpacing: .5,
                    fontWeight: FontWeight.w900,
                    fontSize: 9,
                  )),
                  child: Text("REACH", style: GoogleFonts.roboto()),
                ),
                SizedBox(
                  width: 9,
                ),
              ],
            ),
          ])),
    );
  }
}

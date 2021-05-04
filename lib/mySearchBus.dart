import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'myDepartorreach.dart';
import 'myFromandto.dart';
class SearchBus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0XFFF5F7FE),
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
            ]
            //color: Colors.red,
            ),
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.fromLTRB(30, 29, 30, 0),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0XFFB8E9E4),
              width: 2.5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "SEARCH BUS",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Color(0XFF9198A1),
                      letterSpacing: .5,
                      fontWeight: FontWeight.w900,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
              Fromandto(),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Departorreach(),
                        Text("AT",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                              color: Color(0XFF69CCC1),
                              letterSpacing: .5,
                              fontWeight: FontWeight.w900,
                              fontSize: 9,
                            ))),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Color(0XFFF5F7FE),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
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
                          child: Row(
                            children: <Widget>[
                              Text("SELECT TIME  ",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                    color: Color(0XFF4B525C),
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 9,
                                  ))),
                              Image.asset(
                                "lib/assets/dropdownicon.png",
                                height: 5,
                              )
                            ],
                          ),
                        )
                      ])),
              Container(
                  margin: const EdgeInsets.only(top: 14),
                  padding: const EdgeInsets.all(0.0),
                  child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0XFF9CEBE2), Color(0XFF82CEC5)]),
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                flex: 1,

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "SEARCH",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          letterSpacing: .5,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Image.asset("lib/assets/searchicon.png", height:10)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )))
            ],
          ),
        ));
  }
}

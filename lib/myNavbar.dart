import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNavbar extends StatelessWidget {
  MyNavbar();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "BUSES",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0XFF707070),
                    letterSpacing: .5,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0XFF64BFB5), Color(0XFF93DAD2)]),
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(height: 6, width: 52),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "DRIVER",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Color(0XFFA8A8A8),
                      letterSpacing: .5,
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0XFFE2E4EB), Color(0XFFF7F9FE)]),
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(height: 6, width: 12),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "LOGIN",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Color(0XFFA8A8A8),
                      letterSpacing: .5,
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0XFFE2E4EB), Color(0XFFF7F9FE)]),
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(height: 6, width: 12),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0XFF9CEBE2), Color(0XFF82CEC5)]),
              borderRadius: BorderRadius.circular(6),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "REGISTER➜",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Color(0XFFFFFFFF),
                  letterSpacing: .5,
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

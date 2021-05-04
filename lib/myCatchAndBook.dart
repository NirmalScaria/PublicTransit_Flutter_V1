import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CatchAndBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:25),
      //color:Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            
            //padding:EdgeInsets.all(10),
            height:42,
            width:153,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:Color(0XFFF5F7FE),
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                BoxShadow(
                  color:Color.fromRGBO(255, 255, 255, 1),
                  offset: const Offset(-5.0, -5.0),
                  blurRadius: 6.0,
                ),
                BoxShadow(
                  color:Color.fromRGBO(0, 0, 0, 0.17),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 6.0,
                )
              ]
            ),
            child: Row(
              
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("lib/assets/catchbus.png", height:21,),
                SizedBox(width:8),
                Text(
                    "Catch a Bus",
                    style: GoogleFonts.alata(
                      textStyle: TextStyle(
                        color: Color(0XFF69CCC1),
                        letterSpacing: .5,
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),)
              ],
            )
            ),
            SizedBox(width:25),
          Container(
            
            //padding:EdgeInsets.all(10),
            height:42,
            width:153,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:Color(0XFFF5F7FE),
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                BoxShadow(
                  color:Color.fromRGBO(255, 255, 255, 1),
                  offset: const Offset(-5.0, -5.0),
                  blurRadius: 6.0,
                ),
                BoxShadow(
                  color:Color.fromRGBO(0, 0, 0, 0.17),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 6.0,
                )
              ]
            ),
            child: Row(
              
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("lib/assets/booktickets.png", height:21,),
                SizedBox(width:8),
                Text(
                    "Book Tickets",
                    style: GoogleFonts.alata(
                      textStyle: TextStyle(
                        color: Color(0XFF69CCC1),
                        letterSpacing: .5,
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),)
              ],
            )
            ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flip_card/flip_card.dart';

class Fromandto extends StatefulWidget {
  @override
  _FromandtoState createState() => _FromandtoState();
}

int fromtoto = 0;
final fromController = TextEditingController();
final toController = TextEditingController();
var to = "";
var from = "deff";

class _FromandtoState extends State<Fromandto> {
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      back: Cardcontent(),
      front: Cardold(),
      direction: FlipDirection.VERTICAL,
    );
  }
}

class Cardcontent extends StatefulWidget {
  @override
  _CardcontentState createState() => _CardcontentState();
}

class _CardcontentState extends State<Cardcontent> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 110),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color(0XFFF5F7FE),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 1),
              offset: const Offset(-2.0, -2.0),
              blurRadius: 3.0,
            ),
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.17),
              offset: const Offset(2.0, 2.0),
              blurRadius: 3.0,
            )
          ]
          //color: Colors.red,
          ),
      //height: 50,
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(0, 17, 0, 0),
      //color: Colors.green,
      child: Container(
        //color:Colors.green,

        child: Stack(
          children: <Widget>[
            AnimatedContainer(
              duration: (Duration(milliseconds: 500)),
              curve: Curves.fastOutSlowIn,
              margin: fromtoto == 0
                  ? EdgeInsets.fromLTRB(0, 00, 0, 0)
                  : EdgeInsets.fromLTRB(0, 50, 0, 0),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: new TextField(
                                textCapitalization: TextCapitalization.characters,
                controller: fromController,
                cursorColor: Colors.black,
                decoration: new InputDecoration(
                  icon: Image.asset(
                    "lib/assets/Location Off.png",
                    height: 19,
                  ),
                  labelText: fromtoto == 0 ? "From" : "To",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Container(
                  height: 1.0,
                  color: Color(0XFFC8C8C8),
                ),
              ),
            ),
            AnimatedContainer(
              duration: (Duration(milliseconds: 500)),
              curve: Curves.fastOutSlowIn,
              margin: fromtoto == 1
                  ? EdgeInsets.fromLTRB(0, 00, 0, 0)
                  : EdgeInsets.fromLTRB(0, 50, 0, 0),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: new TextField(
                                textCapitalization: TextCapitalization.characters,
                controller: toController,
                cursorColor: Colors.black,
                decoration: new InputDecoration(
                  icon: Image.asset(
                    "lib/assets/Location On.png",
                    height: 19,
                  ),
                  labelText: fromtoto == 1 ? "From" : "To",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0XFFF5F7FE),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            offset: const Offset(-2.0, -2.0),
                            blurRadius: 3.0,
                          ),
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.17),
                            offset: const Offset(2.0, 2.0),
                            blurRadius: 3.0,
                          )
                        ]
                        //color: Colors.red,
                        ),
                    width: 32,
                    height: 32,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 34, 18, 0),
                    child: Image.asset(
                      "lib/assets/Icon ionic-md-arrow-forward.png",
                      height: 15,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}



class Cardold extends StatefulWidget {
  @override
  _CardoldState createState() => _CardoldState();
}

class _CardoldState extends State<Cardold> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 110),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color(0XFFF5F7FE),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 1),
              offset: const Offset(-2.0, -2.0),
              blurRadius: 3.0,
            ),
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.17),
              offset: const Offset(2.0, 2.0),
              blurRadius: 3.0,
            )
          ]
          //color: Colors.red,
          ),
      //height: 50,
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(0, 17, 0, 0),
      //color: Colors.green,
      child: Container(
        //color:Colors.green,

        child: Stack(
          children: <Widget>[
            AnimatedContainer(
              duration: (Duration(milliseconds: 500)),
              curve: Curves.fastOutSlowIn,
              margin: fromtoto == 0
                  ? EdgeInsets.fromLTRB(0, 00, 0, 0)
                  : EdgeInsets.fromLTRB(0, 50, 0, 0),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: new TextField(
                textCapitalization: TextCapitalization.characters,
                controller: toController,
                cursorColor: Colors.black,
                decoration: new InputDecoration(
                  icon: Image.asset(
                    "lib/assets/Location Off.png",
                    height: 19,
                  ),
                  labelText: fromtoto == 0 ? "From" : "To",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Container(
                  height: 1.0,
                  color: Color(0XFFC8C8C8),
                ),
              ),
            ),
            AnimatedContainer(
              duration: (Duration(milliseconds: 500)),
              curve: Curves.fastOutSlowIn,
              margin: fromtoto == 1
                  ? EdgeInsets.fromLTRB(0, 00, 0, 0)
                  : EdgeInsets.fromLTRB(0, 50, 0, 0),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: new TextField(
                textCapitalization: TextCapitalization.characters,
                controller: fromController,
                cursorColor: Colors.black,
                decoration: new InputDecoration(
                  icon: Image.asset(
                    "lib/assets/Location On.png",
                    height: 19,
                  ),
                  labelText: fromtoto == 1 ? "From" : "To",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0XFFF5F7FE),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            offset: const Offset(-2.0, -2.0),
                            blurRadius: 3.0,
                          ),
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.17),
                            offset: const Offset(2.0, 2.0),
                            blurRadius: 3.0,
                          )
                        ]
                        //color: Colors.red,
                        ),
                    width: 32,
                    height: 32,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 34, 18, 0),
                    child: Image.asset(
                      "lib/assets/Icon ionic-md-arrow-forward.png",
                      height: 15,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}


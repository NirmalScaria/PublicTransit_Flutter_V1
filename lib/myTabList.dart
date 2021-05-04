//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TabList extends StatefulWidget {
  @override
  _TabListState createState() => _TabListState();
}

class _TabListState extends State<TabList> {
  List<String> tabitems = ["BUSES", "DRIVER", "LOGIN"];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            margin: const EdgeInsets.only(left: 13, top: 30, right: 20),
            height: 70,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabitems.length,
                itemBuilder: (context, index) => buildTabs(index))),
        RegisterButton(),
      ],
    );
  }

  Widget buildTabs(int index) {
    return
        GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: selectedindex == index
                  ? const EdgeInsets.only(top: 10)
                  : const EdgeInsets.only(top: 20),
              child: AnimatedDefaultTextStyle(
                curve: Curves.fastOutSlowIn,
                duration: const Duration(milliseconds: 500),
                style: selectedindex == index
                    ? TextStyle(
                        color: Color(0XFF707070),
                        letterSpacing: .5,
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                      )
                    : TextStyle(
                        color: Color(0XFFA8A8A8),
                        letterSpacing: .5,
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                      ),
                child: Text(
                  tabitems[index],
                ),
              ),
            ),
            AnimatedContainer(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: selectedindex == index
                            ? [Color(0XFF64BFB5), Color(0XFF93DAD2)]
                            : [Color(0XFFE2E4EB), Color(0XFFF7F9FE)]),
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(height: 6, width: 12),
                padding:
                    EdgeInsets.only(right: selectedindex == index ? 40 : 0),
                duration: Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn),
          ],
        ),
      ),
    );
  }
}



class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
          margin: const EdgeInsets.only(top: 60, right: 25),
          padding: const EdgeInsets.all(0.0),
          child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              padding: EdgeInsets.fromLTRB(0,0,0,0),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0XFF9CEBE2), Color(0XFF82CEC5)]),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(10,8,10,8),
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
                ),
              ))),
    );
  }
}

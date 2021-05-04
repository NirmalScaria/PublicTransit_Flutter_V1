import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0XFF67DED0),
        margin: EdgeInsets.only(top: 20, bottom: 0),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("lib/assets/home.png", height: 20),
                SizedBox(height: 3),
                Text("Home",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.w900,
                        fontSize: 12,
                      ),
                    )),
              ],
            ),
            Container(
              height: 45,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              width: 1,
              color: Colors.white,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("lib/assets/home.png", height: 20),
                SizedBox(height: 3),
                Text("Home",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.w900,
                        fontSize: 12,
                      ),
                    )),
              ],
            ),
          ],
        ));
  }
}

class BottomTabList extends StatefulWidget {
  @override
  _BottomTabListState createState() => _BottomTabListState();
}

class _BottomTabListState extends State<BottomTabList> {
  List<String> tabitems = ["Home", "Share", "Profile", "Settings"];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0XFF67DED0),
        margin: EdgeInsets.only(top: 20, bottom: 0),
        height: 60,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildTabs(0),
              Verticalbar(),
              buildTabs(1),
              Verticalbar(),
              buildTabs(2),
              Verticalbar(),
              buildTabs(3)
            ]));
  }

  Widget buildTabs(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Container(
        padding:EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              firstCurve: Curves.fastOutSlowIn,
              secondCurve: Curves.fastOutSlowIn,
                firstChild: Image.asset("lib/assets/" + tabitems[index] + ".png",
                    width: 20, height: 20),
                secondChild: Image.asset(
                    "lib/assets/" + tabitems[index] + "sel.png",
                    width: 20,
                    height: 20),
                crossFadeState: index == selectedindex
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: Duration(milliseconds: 500)),
            SizedBox(height: 3),
            AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 500),
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: index != selectedindex
                      ? Color(0XFFFFFFFF)
                      : Color(0XFF38505E),
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                ),
              ),
              child: Text(tabitems[index],
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: index != selectedindex
                          ? Color(0XFFFFFFFF)
                          : Color(0XFF38505E),
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class Verticalbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 1,
      color: Colors.white,
    );
  }
}

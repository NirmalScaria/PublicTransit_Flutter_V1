import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class RemainingOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 45, right: 45, top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Item(param: ["Spend free\n time", "Spend free time"]),
                Item(param: ["Request\n a delay", "Request a delay"]),
                Item(param: ["Track \na bus", "Track a bus"]),
              ],
            ),
            SizedBox(height:15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Item(param: ["Track\n booking", "Track booking"]),
                Item(param: ["Alarm on \n reaching", "Alarm on reaching"]),
                Item(param: ["Submit\n feedback", "Submit feedback"]),
              ],
            )
          ],
        ));
  }
}

class RemainingItem extends StatefulWidget {
  @override
  _RemainingItemState createState() => _RemainingItemState();
}

class _RemainingItemState extends State<RemainingItem> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Item extends StatelessWidget {
  Item({Key key, this.param}) : super(key: key);

  final List<String> param;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0XFFEAEDF3), Color(0XFFC6D1F2)]),
      ),
      height: 104,
      width: 86,
      child: new Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0XFFD6DCE8), Color(0XFFDEE4F6)]),
      ),
            child:
                Image.asset("lib/assets/img" + param[1] + ".png", height: 22),
          ),
          SizedBox(height:6),
          new Text(param[0],
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Color(0XFF516070),
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                ),
              )),
        ],
      ),
    );
  }
}

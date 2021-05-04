import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class TimePicker extends StatefulWidget {
  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay _dateTime;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showTimePicker(context: context, initialTime: TimeOfDay.now())
            .then((time) {
          setState(() {
            _dateTime = time;
          });
        });
      },
      child: Row(
        children: <Widget>[
          Text(_dateTime == null ? "SELECT TIME" : _dateTime.format(context),
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                color: Color(0XFF4B525C),
                letterSpacing: .5,
                fontWeight: FontWeight.w900,
                fontSize: _dateTime == null ? 9 : 11,
              ))),
          SizedBox(width: 5),
          Image.asset(
            "lib/assets/dropdownicon.png",
            height: 5,
          )
        ],
      ),
    );
  }
}

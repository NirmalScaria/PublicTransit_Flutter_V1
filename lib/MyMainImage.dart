import 'package:flutter/material.dart';
class MyMainImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:Color(0XFFE5EEFC),
              boxShadow: [
                BoxShadow(
                  color: Color(0XFFBECBDD),
                  offset: Offset(16, 16),
                  blurRadius: 20,
                  spreadRadius: 15,
                ),
                BoxShadow(
                  color: Color(0XFFF7FFFF),
                  offset: Offset(-16, -16),
                  blurRadius: 20,
                  spreadRadius: 15,
                )
              ],
          ),
          padding:EdgeInsets.all(16),
          
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fitWidth,
                alignment: FractionalOffset(0.0, 0.13),
                image: AssetImage('lib/assets/tape.jpg'),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0XFFBECBDD),
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),

              ],
            ),

          ),
        ),
    );
  }
}
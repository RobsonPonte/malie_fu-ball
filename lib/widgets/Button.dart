import 'package:flutter/material.dart';

class ButtonOne {
  String name;
  Color color;

  ButtonOne({this.name, this.color});
}

class ButtonOneDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: RaisedButton(
        onPressed: () {},
        //Funktion button muss noch implementiert werden
        child: Text(
          'club',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        color: Color.fromRGBO(12, 160, 183, 1),
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

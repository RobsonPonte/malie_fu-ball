import 'package:flutter/material.dart';

class Eingabefeld extends StatelessWidget {
  final String titel;
  final String hinttext;

  Eingabefeld(this.titel, this.hinttext);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                height: 30,
                child: Text(
                  titel,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.amber,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
          child: TextField(
            decoration: InputDecoration(
              hintText: hinttext,
              hintStyle: TextStyle(fontSize: 15),
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }
}

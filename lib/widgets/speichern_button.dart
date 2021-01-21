import 'package:flutter/material.dart';

class Speichern extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          onPressed: () {},
          child: Text(
            'speichern',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          color: Theme.of(context).primaryColor,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ],
    );
  }
}

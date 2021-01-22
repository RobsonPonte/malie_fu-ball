import 'package:flutter/material.dart';

class AppBarPositionen extends StatelessWidget {
  final String titel;

  AppBarPositionen(this.titel);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 15),
          height: 45,
          width: 45,
          child: Image.asset('images/logo.png'),
        ),
        Text(
          titel,
          style: TextStyle(
            fontFamily: 'Segoesc',
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}

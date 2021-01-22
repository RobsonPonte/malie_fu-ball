import 'package:flutter/material.dart';
import 'package:malie/widgets/BasisSeite.dart';

class WillkommenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BasisSeiteKlein(),
          Container(
            //color: Colors.red,
            child: Text(
              'willkommen bei malie.',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
          Container(), // Willkommmenstext muss noch eingefügt werden!!!
        ],
      ),
    );
  }
}

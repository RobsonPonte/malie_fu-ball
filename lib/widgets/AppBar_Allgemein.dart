import 'package:flutter/material.dart';

class AppBarAllgemein extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {},
          color: Colors.white,
          iconSize: 40,
        ),
        const Text(
          'malie',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Segoesc',
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: Icon(Icons.tune),
          onPressed: () {},
          color: Colors.white,
          iconSize: 38,
        ),
      ],
    );
  }
}

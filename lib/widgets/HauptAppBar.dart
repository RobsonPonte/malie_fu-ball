import 'package:flutter/material.dart';

class HauptAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                'images/User.png',
                fit: BoxFit.cover,
                height: 42,
              ),
            ),
            Text(
              'malie',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
                fontFamily: 'Segoesc',
              ),
            ),
            Container(
              child: Image.asset(
                'images/Einstellungen.png',
                fit: BoxFit.cover,
                height: 38,
              ),
            )
          ],
        ),
      ),
    );
  }
}

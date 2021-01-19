import 'package:flutter/material.dart';

//Navigation Button fehlt noch
// Icon NavBar ohne Text; oder eigene Icon verwenden

class MainBars extends StatefulWidget {
  @override
  _MainBarsState createState() => _MainBarsState();
}

class _MainBarsState extends State<MainBars> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
              color: Colors.grey[400],
              iconSize: 40,
            ),
            Text(
              'malie',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
                fontFamily: 'Segoesc',
              ),
            ),
            IconButton(
              icon: Icon(Icons.tune),
              onPressed: () {},
              color: Colors.grey[400],
              iconSize: 38,
            ),
          ],
        ),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(14, 209, 149, 1),
        unselectedItemColor: Colors.grey[400],
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            title: Text('home'), //title evtl. noch durch label ersetzen
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Chat'),
          ),
        ],
      ),
    );
  }
}

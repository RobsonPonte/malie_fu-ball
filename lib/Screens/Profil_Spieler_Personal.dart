import 'package:flutter/material.dart';

// Navigation Icon zu Seiten fehlt noch
// Icon NavBar ohne Text; oder eigene Icon verwenden
// AppBar selceted color fehlt noch

class ProfilSpielerPersonal extends StatefulWidget {
  @override
  _ProfilSpielerPersonalState createState() => _ProfilSpielerPersonalState();
}

class _ProfilSpielerPersonalState extends State<ProfilSpielerPersonal> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
              color: Colors.white,
              iconSize: 40,
            ),
            Text(
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
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: 220,
                  width: 220,
                  child: Image.asset(
                    'images/Profilbild.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 260,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'angaben zur person',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                color: Colors.amber,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              width: 260,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'meine karriere',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                color: Colors.amber,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: 260,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'einstellungen',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  color: Colors.amber,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey[400],
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            title: Text('gold'), //title evtl. noch durch label ersetzen
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

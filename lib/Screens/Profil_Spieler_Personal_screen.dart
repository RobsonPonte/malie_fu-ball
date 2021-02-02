import 'package:flutter/material.dart';
import 'package:malie/widgets/AppBar_Allgemein.dart';

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
        title: AppBarAllgemein(),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 265,
                  width: 245,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 220,
                        width: 220,
                        child: Image.asset(
                          'images/Profilbild.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 0,
                        child: Container(
                            child: ClipOval(
                          child: Material(
                            color: Colors.amber[300],
                            child: InkWell(
                              splashColor: Colors.white,
                              child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                              onTap: () {},
                            ),
                          ),
                        )),
                      ),
                    ],
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
              margin: EdgeInsets.only(bottom: 30),
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
            icon: Icon(Icons.change_history),
            title: Text('gold'), //title evtl. noch durch label ersetzen
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('chat'),
          ),
        ],
      ),
    );
  }
}

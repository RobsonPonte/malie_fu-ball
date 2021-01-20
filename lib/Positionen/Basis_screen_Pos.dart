import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//Für Auswahl der Positionen
class BasisSeitePos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*       appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('malie',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
              fontFamily: 'Segoesc',
            )),
      ), */
      body: Column(
        children: [
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 35, right: 15, left: 15),
            child: Row(
              children: [
                Container(
                  color: Colors.amber, //nur zum testen
                  margin: EdgeInsets.only(right: 25),
                  child: Image.asset(
                    'images/logo.png',
                    alignment: Alignment.bottomLeft, //Funktioniert nicht
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Theme.of(context).primaryColor, width: 3),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'fussball:',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 40, right: 15, left: 15),
            color: Colors.red,
            child: Text(
              'hauptposition:',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 40, right: 15, left: 15),
            color: Colors.red,
            child: Text(
              'nebenposition:',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}

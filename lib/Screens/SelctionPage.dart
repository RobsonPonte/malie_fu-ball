import 'package:flutter/material.dart';
import 'package:malie/widgets/BasisSeite.dart';

class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Flexible(fit: FlexFit.tight, child: BasisSeite()),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              children: [
                Text(
                  'I´m a:',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 280,
                  child: RaisedButton(
                    onPressed: () {},
                    //Funktion button muss noch implementiert werden
                    child: Text(
                      'athlete',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    color: Color.fromRGBO(14, 209, 149, 1),
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(
                  width: 280,
                  child: RaisedButton(
                    onPressed: () {},
                    //Funktion button muss noch implementiert werden
                    child: Text(
                      'club',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    color: Color.fromRGBO(12, 160, 183, 1),
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(
                  width: 280,
                  child: RaisedButton(
                    onPressed: () {},
                    //Funktion button muss noch implementiert werden
                    child: Text(
                      'staff',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    color: Color.fromRGBO(8, 86, 133, 1),
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

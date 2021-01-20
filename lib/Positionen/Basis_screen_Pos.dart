import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:malie/widgets/Button.dart';

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
            height: 80,
            margin: EdgeInsets.only(top: 35, right: 15, left: 15),
            child: Row(
              children: [
                Container(
                  //color: Colors.amber, //nur zum testen
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
            margin: EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 8),
            //color: Colors.red,
            child: Text(
              'hauptposition:',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            //color: Colors.red,
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonPosFussball('TW', Colors.amber),
                    ButtonPosFussball('LV', Color.fromRGBO(14, 209, 149, 1)),
                    ButtonPosFussball('IV', Color.fromRGBO(14, 209, 149, 1)),
                    ButtonPosFussball('RV', Color.fromRGBO(14, 209, 149, 1)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonPosFussball('DM', Color.fromRGBO(12, 160, 183, 1)),
                    ButtonPosFussball('ZM', Color.fromRGBO(12, 160, 183, 1)),
                    ButtonPosFussball('OM', Color.fromRGBO(12, 160, 183, 1)),
                    ButtonPosFussball('LM', Color.fromRGBO(12, 160, 183, 1)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonPosFussball('RM', Color.fromRGBO(12, 160, 183, 1)),
                    ButtonPosFussball('ASL', Theme.of(context).accentColor),
                    ButtonPosFussball('ST', Theme.of(context).accentColor),
                    ButtonPosFussball('ASR', Theme.of(context).accentColor),
                  ],
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 8, right: 15, left: 15, bottom: 8),
            //color: Colors.red,
            child: Text(
              'nebenposition (max. 2):',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            //color: Colors.red,
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonPosFussball('TW', Colors.amber),
                    ButtonPosFussball('LV', Color.fromRGBO(14, 209, 149, 1)),
                    ButtonPosFussball('IV', Color.fromRGBO(14, 209, 149, 1)),
                    ButtonPosFussball('RV', Color.fromRGBO(14, 209, 149, 1)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonPosFussball('DM', Color.fromRGBO(12, 160, 183, 1)),
                    ButtonPosFussball('ZM', Color.fromRGBO(12, 160, 183, 1)),
                    ButtonPosFussball('OM', Color.fromRGBO(12, 160, 183, 1)),
                    ButtonPosFussball('LM', Color.fromRGBO(12, 160, 183, 1)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonPosFussball('RM', Color.fromRGBO(12, 160, 183, 1)),
                    ButtonPosFussball('ASL', Theme.of(context).accentColor),
                    ButtonPosFussball('ST', Theme.of(context).accentColor),
                    ButtonPosFussball('ASR', Theme.of(context).accentColor),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 22, bottom: 12),
            child: Column(
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
            ),
          ),
        ],
      ),
    );
  }
}

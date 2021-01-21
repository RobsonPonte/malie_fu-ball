import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:malie/widgets/category_item.dart';
import 'package:malie/widgets/dummy_data.dart';

//Für Auswahl der Positionen

class Fussballtest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'fussball',
              style: TextStyle(
                fontFamily: 'Segoesc',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 20, right: 15, left: 20),
            //color: Colors.red,
            child: Text(
              'meine hauptposition:',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            height: 160,
            //color: Colors.red,
            margin: EdgeInsets.all(15),
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              children: DUMMY_CATEGORIES
                  .map(
                    (catData) => CategoryItem(
                      catData.title,
                      catData.color,
                    ),
                  )
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 60,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(right: 15, left: 20),
            //color: Colors.red,
            child: Text(
              'meine nebenposition (max. 2):',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            height: 160,
            //color: Colors.red,
            margin: EdgeInsets.all(15),
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              children: DUMMY_CATEGORIES
                  .map(
                    (catData) => CategoryItem(
                      catData.title,
                      catData.color,
                    ),
                  )
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 60,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
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

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:malie/Data/fussball_data.dart';
import 'package:malie/widgets/AppBarPositionen.dart';
import 'package:malie/widgets/category_item.dart';
import 'package:malie/widgets/speichern_button.dart';

class PositionFussball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarPositionen('fussball'),
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
              children: FUSSBALL_HAUPTPOSITIONEN
                  .map(
                    (catData) => AllgemeinItem(
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
          Expanded(
            child: Container(
              height: 160,
              //color: Colors.red,
              margin: EdgeInsets.all(15),
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                children: FUSSBALL_NEBENPOSITIONEN
                    .map(
                      (catData) => AllgemeinItem(
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
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Speichern(),
          ),
        ],
      ),
    );
  }
}

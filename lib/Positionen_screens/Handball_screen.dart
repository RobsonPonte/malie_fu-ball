import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:malie/Data/handball_data.dart';
import 'package:malie/widgets/AppBarPositionen.dart';
import 'package:malie/widgets/category_item.dart';
import 'package:malie/widgets/speichern_button.dart';

class PositionHandball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarPositionen('handball'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 20, right: 15, left: 20),
            //color: Colors.red,
            child: Text(
              'hauptposition angriff:',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            height: 160,
            //color: Colors.red,
            margin: EdgeInsets.only(right: 15, left: 15, top: 15),
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              children: HANDBALL_ANGRIFFPOSITONEN
                  .map(
                    (catData) => AllgemeinItem(
                      catData.title,
                      catData.color,
                    ),
                  )
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 5 / 1,
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
              'hauptposition abwehr:',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Expanded(
            child: Container(
              height: 180,
              //color: Colors.red,
              margin: EdgeInsets.all(15),
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                children: HANDBALL_ABWEHRPOSITONEN
                    .map(
                      (catData) => AllgemeinItem(
                        catData.title,
                        catData.color,
                      ),
                    )
                    .toList(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 5 / 1,
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

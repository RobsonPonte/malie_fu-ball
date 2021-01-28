import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:malie/Data/rugby_data.dart';
import 'package:malie/widgets/AppBarPositionen.dart';
import 'package:malie/widgets/category_item.dart';
import 'package:malie/widgets/speichern_button.dart';

class PositionRugby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarPositionen('rugby'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 20, right: 15, left: 20, bottom: 10),
            //color: Colors.red,
            child: Text(
              'meine hauptposition:',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Expanded(
            child: Container(
              height: 160,
              margin: EdgeInsets.only(right: 15, left: 15, top: 10),
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                children: RUGBY_POSITIONEN
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

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:malie/Data/personal_data.dart';
import 'package:malie/widgets/AppBarPositionen.dart';
import 'package:malie/widgets/category_item.dart';
import 'package:malie/widgets/speichern_button.dart';

class PositionPersonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarPositionen('personal'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 20, right: 15, left: 20),
            //color: Colors.red,
            child: Text(
              'aktuelle position:',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Expanded(
            child: Container(
              //color: Colors.red,
              height: 270,
              margin: EdgeInsets.only(right: 15, left: 15, top: 15),
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                children: PERSONAL_POSITIONEN
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

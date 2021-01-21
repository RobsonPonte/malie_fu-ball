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
        title: Row(
          children: [
            Text(
              'fussball',
              style: TextStyle(fontFamily: 'Segoesc', fontSize: 25),
            )
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: GridView(
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
    );
  }
}

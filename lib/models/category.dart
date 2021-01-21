import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  //final String hauptneben; als boolean
  final Color color;

  const Category({
    @required this.id,
    @required this.title,
    //@required this.hauptneben,
    this.color = Colors.orange,
  });
}

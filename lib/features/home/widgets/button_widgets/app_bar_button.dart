import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_colors.dart';

Widget appBarButton() {
  return Container(
    constraints: BoxConstraints(minWidth: 100),
    height: 30,
    margin: EdgeInsets.only(right: 6),
    // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      color: surface,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: surface),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.shopping_bag),

        Container(color: Colors.red, child: Text('1111111111111111111111')),
      ],
    ),
  );
}

import 'package:flutter/material.dart';

Widget searchBarWiddget(String hintText, Function()? onTap) {
  return SearchBar(
    onTap: onTap,
    hintText: hintText,
    keyboardType: TextInputType.multiline,
    textInputAction: TextInputAction.search,
    leading: Icon(Icons.search),
  );
}

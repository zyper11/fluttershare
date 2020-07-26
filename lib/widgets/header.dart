import 'package:flutter/material.dart';

AppBar header({bool isAppTitle = false, String titleText}) {
  return AppBar(
    title: Text(
      isAppTitle ? 'Flutter Share' : titleText,
      style: TextStyle(
        fontFamily: isAppTitle ? 'Signatra' : '',
        fontSize: isAppTitle ? 35.0 : 22.0,
      ),
    ),
    centerTitle: true,
  );
}

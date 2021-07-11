import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
final ThemeData ippanDarkTheme=ThemeData.dark();
final ThemeData ippanLightTheme=ThemeData(
  primaryColor: Color.fromRGBO(41, 30, 161,1),
  appBarTheme: AppBarTheme(
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    backgroundColor: Color.fromRGBO(41, 30, 161, 1)
  )
);
final ThemeData EnjiTheme=ThemeData(
  primaryColor: Color.fromRGBO(139, 0, 0,1),
  appBarTheme: AppBarTheme(
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    backgroundColor: Color.fromRGBO(139, 0, 0,1)
  ),
  accentColor: Color.fromRGBO(139, 0, 0,1),
);
final ThemeData MintTheme=ThemeData(
  primaryColor:Color.fromRGBO(0, 255, 170,1)
);
final ThemeData PinkTheme=ThemeData(
  primaryColor:Color.fromRGBO(251, 0, 255, 1)
);
import 'package:UMENAVI/themes/ThemeColorNotifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
final ThemeData ippanDarkTheme=ThemeData.dark();
final ThemeData ippanLightTheme=ThemeData(
  primaryColor: Color.fromRGBO(41, 30, 161,1),
);
final ThemeData EnjiTheme=ThemeData(
  primaryColor: Color.fromRGBO(139, 0, 0,1),
  appBarTheme: AppBarTheme(
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    backgroundColor: Color.fromRGBO(139, 0, 0,1)
  )
);
final prefs =SharedPreferences.getInstance();
final ThemeData CustomTheme=ThemeData(
  primaryColor: Color.fromRGBO(
      prefs.getInt("ThemeRGB_r") ?? 41,
      prefs.getInt("ThemeRGB_g") ?? 30,
      prefs.getInt("ThemeRGB_b") ?? 161,
      prefs.getDouble("ThemeRGB_o") ?? 1
  )
);
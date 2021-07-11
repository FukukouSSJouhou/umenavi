import 'package:flutter/material.dart';
import "ThemeData.dart";
enum ExtraThemeMode{
  system,
  light,
  dark,
  enji,
  mint,
}
extension Extension on ExtraThemeMode{
  int get id{
    switch(this){
      case ExtraThemeMode.system:
        return 1000;
      case ExtraThemeMode.light:
        return 1001;
      case ExtraThemeMode.dark:
        return 1002;
      case ExtraThemeMode.enji:
        return 1003;
      case ExtraThemeMode.mint:
        return 1004;
    }
    return 0;
  }
  String get name{
    switch(this){
      case ExtraThemeMode.system:
        return "System";
      case ExtraThemeMode.light:
        return "Light";
      case ExtraThemeMode.dark:
        return "Dark";
      case ExtraThemeMode.enji:
        return "Enji";
      case ExtraThemeMode.mint:
        return "Mint";
    }
    return null;
  }
  String get description{

    switch(this){
      case ExtraThemeMode.system:
        return "System setting";
      case ExtraThemeMode.light:
        return "Default Light Theme";
      case ExtraThemeMode.dark:
        return "Default Dark Theme";
      case ExtraThemeMode.enji:
        return "Enji Iro";
      case ExtraThemeMode.mint:
        return "Mint Color";
    }
    return null;
  }
  IconData get icon{

    switch(this){
      case ExtraThemeMode.system:
        return Icons.settings;
      case ExtraThemeMode.light:
        return Icons.light_mode;
      case ExtraThemeMode.dark:
        return Icons.dark_mode;
      case ExtraThemeMode.enji:
        return Icons.school;
      case ExtraThemeMode.mint:
        return Icons.access_time;
    }
    return null;
  }
  ThemeData get themeData{
    switch(this){
      case ExtraThemeMode.system:
        return ippanLightTheme;
      case ExtraThemeMode.light:
        return ippanLightTheme;
      case ExtraThemeMode.dark:
        return ippanDarkTheme;
      case ExtraThemeMode.enji:
        return EnjiTheme;
      case ExtraThemeMode.mint:
        return MintTheme;
    }
    return null;
  }
  ThemeData get darkThemeData{
    switch(this){
      case ExtraThemeMode.system:
        return ippanDarkTheme;
      default:
        return null;
    }
  }
}
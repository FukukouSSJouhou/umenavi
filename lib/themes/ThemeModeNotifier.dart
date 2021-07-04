import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";
import "ThemeMode.dart";
class ThemeModeNotifier extends ChangeNotifier{
  ThemeModeNotifier({@required int id})
  :current=ExtraThemeMode.values
  .firstWhere((e)=>e.id == id,orElse:() => ExtraThemeMode.system);
      ExtraThemeMode current;
      static const String selectedThemeKey="CurrentTheme";
      Future change(ExtraThemeMode mode) async{
        current=mode;
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt(selectedThemeKey, mode.id);
        notifyListeners();
      }
      ThemeData get themeData=>current.themeData;
      ThemeData get darkThemeData => current.darkThemeData;
}
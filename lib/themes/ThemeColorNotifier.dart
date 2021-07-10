import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";
class ThemeColorNotifier extends ChangeNotifier{
  ThemeColorNotifier({@required Color color})
      :current=color;
  Color current;
  static const String selectedThemeKey="ThemeRGB_";
  Future change(Color color) async{
    current=color;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(selectedThemeKey + "r", current.red);
    await prefs.setInt(selectedThemeKey + "g", current.green);
    await prefs.setInt(selectedThemeKey + "b", current.blue);
    await prefs.setDouble(selectedThemeKey + "o", current.opacity);
    notifyListeners();
  }
  Color get Colorkun=>current;
}
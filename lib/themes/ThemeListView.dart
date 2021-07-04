import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "ThemeMode.dart";
import "ThemeModeNotifier.dart";
class ThemeListView extends StatelessWidget{
  const ThemeListView();
  @override
  Widget build(BuildContext context){
    final themeNotifier=Provider.of<ThemeModeNotifier>(context);
    var selsectedTheme=themeNotifier.current;
    return ListView.builder(
      itemCount: ExtraThemeMode.values.length,
      itemBuilder: (_,index){
        final themeDataMode=ExtraThemeMode.values[index];
        return RadioListTile(
          
        );
      },
    );
  }
}
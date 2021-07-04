import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "ThemeMode.dart";
import "ThemeModeNotifier.dart";
class ThemeListView extends StatelessWidget{
  const ThemeListView();
  @override
  Widget build(BuildContext context){
    final themeNotifier=Provider.of<ThemeModeNotifier>(context);
    var _selectedTheme=themeNotifier.current;
    return ListView.builder(
      itemCount: ExtraThemeMode.values.length,
      itemBuilder: (_,index){
        final themeDataMode=ExtraThemeMode.values[index];
        return RadioListTile(
          title: Text(themeDataMode.name),
          subtitle: Text(themeDataMode.description),
          secondary: Icon(themeDataMode.icon),
          controlAffinity: ListTileControlAffinity.platform,
          value: themeDataMode,
          groupValue: _selectedTheme,
          onChanged: (ExtraThemeMode theme){
            _selectedTheme=theme;
            themeNotifier.change(theme);
          },
        );
      },
    );
  }
}
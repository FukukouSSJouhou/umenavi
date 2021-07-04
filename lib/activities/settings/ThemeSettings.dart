import "package:flutter/material.dart";
import 'package:UMENAVI/themes/ThemeListView.dart';
class ThemeSettingsPage extends StatefulWidget{
  _ThemeSettingsPageState createState()=>new _ThemeSettingsPageState();
}
class _ThemeSettingsPageState extends State<ThemeSettingsPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Settings"),
      ),
      body:ThemeListView()
    );
  }
}
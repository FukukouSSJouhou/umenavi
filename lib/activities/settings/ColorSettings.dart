import 'package:flutter/material.dart';
class ColorSettings extends StatefulWidget{
  _ColorSettingsState createState()=>new _ColorSettingsState();
}
class _ColorSettingsState extends State<ColorSettings>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: Text("Color Settings"),
      ),
      body: ListView(
        
      ),
    );
  }
}
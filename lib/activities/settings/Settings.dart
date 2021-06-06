import 'package:flutter/material.dart';
class SettingsPage extends StatefulWidget{
  _SettingsPageState createState() => new _SettingsPageState();
}
class _SettingsPageState extends State<SettingsPage>{
  bool activetintin=false;
  void changeSW1(bool e) => setState(() => activetintin=e);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: Text("Settings"),
      ),
      body:ListView(
        children: <Widget>[
          SwitchListTile(value: activetintin, onChanged: changeSW1,
          title:Text("Text 1"),
          subtitle: Text("Sub Title"),
            secondary: new Icon(
              Icons.settings,
              size: 50.0,
            ),)
        ],
      )
    );
  }
}
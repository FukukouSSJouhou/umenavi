import 'package:flutter/material.dart';
class SchoolMapPage extends StatefulWidget{
  @override
  _SchoolMapPageState createState()=>new _SchoolMapPageState();
}
class _SchoolMapPageState extends State<SchoolMapPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
        title:new Text("School Map"),
      ),
      body: ListView(
        children: [
          InkWell(
            child:Image.asset("images/maps/1F.png")
          )
        ],
      )
    );
  }
}
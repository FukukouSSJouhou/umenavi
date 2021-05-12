import 'package:flutter/material.dart';
class SchoolMap2FPage extends StatefulWidget{
  @override
  _SchoolMap2FPageState createState()=>new _SchoolMap2FPageState();
}
class _SchoolMap2FPageState extends State<SchoolMap2FPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
        title:new Text("School Map 2F"),
      ),
      body: ListView(
        children: [
          InkWell(
              child:Image.asset("images/maps/2F.png")
          )
        ],
      ),
    );
  }
}
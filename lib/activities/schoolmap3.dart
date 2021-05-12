import 'package:flutter/material.dart';
class SchoolMap3FPage extends StatefulWidget{
  @override
  _SchoolMap3FPageState createState()=>new _SchoolMap3FPageState();
}
class _SchoolMap3FPageState extends State<SchoolMap3FPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
        title:new Text("School Map 3F"),
      ),
      body: ListView(
        children: [
          InkWell(
              child:Image.asset("images/maps/3F.png")
          )
        ],
      ),
    );
  }
}
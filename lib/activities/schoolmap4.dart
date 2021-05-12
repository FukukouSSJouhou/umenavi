import 'package:flutter/material.dart';
class SchoolMap4FPage extends StatefulWidget{
  @override
  _SchoolMap4FPageState createState()=>new _SchoolMap4FPageState();
}
class _SchoolMap4FPageState extends State<SchoolMap4FPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
        title:new Text("School Map 4F"),
      ),
      body: ListView(
        children: [
          InkWell(
              child:Image.asset("images/maps/4F.png")
          )
        ],
      ),
    );
  }
}
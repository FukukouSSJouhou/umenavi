import 'package:flutter/material.dart';
import 'package:umezitu/activities/schoolmap2.dart';
import 'package:umezitu/activities/schoolmap3.dart';
import 'package:umezitu/activities/schoolmap4.dart';
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
      ),
      floatingActionButton: Column(
        verticalDirection: VerticalDirection.up,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            child: const Text("2F"),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(connkun)=>SchoolMap2FPage()));
            },
          ),
    Container(
      margin: EdgeInsets.only(bottom:16.0),
      child:FloatingActionButton(
            child: const Text("3F"),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(connkun)=>SchoolMap3FPage()));
            },
          )),

    Container(
    margin: EdgeInsets.only(bottom:16.0),
    child:FloatingActionButton(
            child: const Text("4F"),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(connkun)=>SchoolMap4FPage()));
            },
          )
          )
        ],
      ),
    );
  }
}
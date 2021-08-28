import 'package:flutter/material.dart';
import 'package:UMENAVI/activities/schoolmap2.dart';
import 'package:UMENAVI/activities/schoolmap3.dart';
import 'package:UMENAVI/activities/schoolmap4.dart';
import 'package:flutter/services.dart';
class BunkaMapPage extends StatefulWidget{
  @override
  _BunkaMapPageState createState()=>new _BunkaMapPageState();
}
class _BunkaMapPageState extends State<BunkaMapPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
        title:new Text("文化センター!"),
      ),
      body: ListView(
        children: [
          GestureDetector(
          behavior: HitTestBehavior.opaque,
            child:Image.asset("images/maps/1F.png")
          )
        ],
      ),
    );
  }
}
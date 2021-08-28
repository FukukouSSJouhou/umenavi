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
          Text("\n\n\n"),
          Center(
            child: Text("3Fと、\n", style: TextStyle(
              fontSize: 25
          ),
          )
          ),
          Center(child:
            Text("2Fの大ホール以外は使用しません\n",style: TextStyle(
              fontSize: 25
            ),)
          ),
          GestureDetector(
          behavior: HitTestBehavior.opaque,
            child:Image(
                image:NetworkImage("https://www.fcp.or.jp/culture/img/facility/2x/zenkan_sm@2x.jpg")
            )
          ),
          Text("\n\n\n\n\n\n"),
        ],
      ),
    );
  }
}
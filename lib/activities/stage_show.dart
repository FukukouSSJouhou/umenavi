import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class StageShowPage extends StatefulWidget{
  @override
  _StageShowPageState createState()=>new _StageShowPageState();
}
class _StageShowPageState extends State<StageShowPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title:Text("Stage List")
      ),
      body:ListView(
        children: [
          InkWell(
            child:Text("NOT FOUND")
          )
        ],
      )
    );
  }
}
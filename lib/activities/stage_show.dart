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
            child:Center(
              child: Text("データ不足により表示不可能です。\nお楽しみ下さい。"),
            )
          )
        ],
      )
    );
  }
}
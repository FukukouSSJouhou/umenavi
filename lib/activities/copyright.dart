import 'package:flutter/material.dart';
class CopyRightPage extends StatefulWidget{
  @override
  _CopyRightPageState createState()=>new _CopyRightPageState();
}
class _CopyRightPageState extends State<CopyRightPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title:Text("Copyright"),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text("Copyright© 2021 Fukushima High School SS Club Jouhouhnan",
            style: TextStyle(
              fontSize: 30
            ),),
          )
        ],
      ),
    );
  }
}
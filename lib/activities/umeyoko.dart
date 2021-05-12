import 'package:flutter/material.dart';
class UmeyokoPage extends StatefulWidget{
  _UmeyokoPageState createState()=>new _UmeyokoPageState();
}
class _UmeyokoPageState extends State<UmeyokoPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title:Text("UMEYOKO")
      ),
      body:ListView(
        children:[
          InkWell(
            child:Image.asset("images/others/umeyoko_value.png")
          )
        ]
      )
    );
  }
}
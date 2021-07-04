import 'package:flutter/material.dart';
class SecretPage extends StatefulWidget{
  @override
  _SecretPageStates createState() => new _SecretPageStates();
}
class _SecretPageStates extends State<SecretPage>{
  @override
  Widget build(BuildContext context){

    return new Scaffold(
        appBar:new AppBar(
          title: Text("Secret Page"),
        ),
      body:ListView(
        children: <Widget>[
          InkWell(
            child: Text("隠しページですを"),
            onTap: (){
            //nothing to do;
            },
          ),
          InkWell(
            child:Text("情報班に会いに行きましょう!!!!!"),
            onTap: (){
              // nothing to do
            },
          )
        ],
      )
    );
  }
}
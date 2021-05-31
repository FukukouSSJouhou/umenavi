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
          Text("Secret....")
        ],
      )
    );
  }
}
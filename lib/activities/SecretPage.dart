import 'package:UMENAVI/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SecretPage extends StatefulWidget{
  @override
  _SecretPageStates createState() => new _SecretPageStates();
}
class _SecretPageStates extends State<SecretPage>{
  int _counter=0;
  void _addCounter(){
    setState((){
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context){

    return new Scaffold(
        appBar:CustomAppBar(
        appBar:new AppBar(
          title: Text("Secret Page"),
        ),
        onTap: () async {
          _addCounter();
          if(_counter > 6){
            //Navigator.push(context, MaterialPageRoute(builder: (_) => Check_CodePage()));
          }
        },),
      body:ListView(
        children: <Widget>[
          Center(
            child: Text("\n\nSecret Page!",style:
              TextStyle(fontSize: 24),),
          ),

          Center(
            child: Text("\n\n製作者はベンザインのランプシェードを所持しています。",style:
            TextStyle(fontSize: 14),),
          )
        ],
      )
    );
  }
}
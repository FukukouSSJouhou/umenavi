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
            var prefkun=await SharedPreferences.getInstance();
            prefkun.setBool("secret_enabled", true);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Secret Enabled!"),
              )
            );
          }
        },),
      body:ListView(
        children: <Widget>[
          Center(
            child: Text("Secret Page!",style:
              TextStyle(fontSize: 24),),
          )
        ],
      )
    );
  }
}
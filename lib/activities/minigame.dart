import 'package:flutter/material.dart';
class MiniGame1 extends StatefulWidget{
  @override
  _MiniGame1State createState()=>new _MiniGame1State();
}
class _MiniGame1State extends State<MiniGame1>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MiniGame"),
      ),
      body:GridView.count(
        crossAxisCount: 5,
    children: <Widget>[
      InkWell(
        onTap:() {
          showDialog(context: context, builder: (context){
            return SimpleDialog(
              title: Text("Oh"),
              children: [
                SimpleDialogOption(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Tapped 1"),
                ),
              ],
            );
          });
        },
        child: Center(child:Text("1",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            )),
      )),
      InkWell(
        onTap:() {
          showDialog(context: context, builder: (context){
            return SimpleDialog(
              title: Text("Oh"),
              children: [
                SimpleDialogOption(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Tapped 2"),
                ),
              ],
            );
          });
        },
        child: Center(child:Text("2",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),)),
      )
    ]
      )
    );
  }
}
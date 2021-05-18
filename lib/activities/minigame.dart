import 'package:flutter/material.dart';
import "package:umezitu/widgets/minigameTapkun.dart";
class MiniGame1 extends StatefulWidget{
  @override
  _MiniGame1State createState()=>new _MiniGame1State();
}
class _MiniGame1State extends State<MiniGame1>{
  String No1State="On";
  String No2State="On";
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MiniGame"),
      ),
      body:GridView.count(
        crossAxisCount: 5,
    children: <Widget>[
      miniGameTapkun(
        onTap:() {
          showDialog(context: context, builder: (context){
            if(No2State == "On"){
              No2State="Off";
            }else{
              No2State="On";
            }
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
        text:No1State
      ),
      miniGameTapkun(
        onTap:() {
          if(No1State == "On"){
            No1State="Off";
          }else{
            No1State="On";
          }
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
        text:No2State
      )
    ]
      )
    );
  }
}
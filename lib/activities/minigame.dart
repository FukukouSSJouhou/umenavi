import 'package:flutter/material.dart';
import "package:umezitu/widgets/minigameTapkun.dart";
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
      miniGameTapkun(
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
        text:"1"
      ),
      miniGameTapkun(
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
        text:"2"
      )
    ]
      )
    );
  }
}
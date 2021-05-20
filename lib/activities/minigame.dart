import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:UMENAVI/activities/games/pazzle1.dart';
class MiniGamePage extends StatefulWidget{
  @override
  _MiniGamePageState createState()=>_MiniGamePageState();
}
class _MiniGamePageState extends State<MiniGamePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: Text("MiniGame"),
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (conkun) => Pazzle1()));
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      SvgPicture.asset("images/icon/iconmonstr-map-2-240.svg",
                        semanticsLabel: 'map',),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("パズルゲーム君"),
                            subtitle: Text("クソゲーですを"),
                          )
                      )
                    ],
                  )
              )
          ),
        ],
      ),
    );
  }
}
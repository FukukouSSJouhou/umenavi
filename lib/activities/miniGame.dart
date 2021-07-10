import 'package:UMENAVI/icons/umenaviicon1_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:UMENAVI/activities/games/pazzle1.dart';
import "package:slidingpuzzle/Board.dart";
import 'package:tetris/main.dart';
class SlidePuzzlePage extends StatelessWidget {
  @override
  Widget build(BuildContext buildc){
    return MaterialApp(
      title: "Sliding Puzzle",
      debugShowCheckedModeBanner: false,
      home:Board()
    );
  }
}
class MiniGamePage extends StatefulWidget{
  @override
  _MiniGamePageState createState()=>_MiniGamePageState();
}
class _MiniGamePageState extends State<MiniGamePage>{
  @override
  Widget build(BuildContext context){
    return ListView(
        children: <Widget>[
          InkWell(
              onTap: (){
                HapticFeedback.heavyImpact();
                Navigator.push(context,MaterialPageRoute(builder: (conkun) => Board()));
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      /*SvgPicture.asset("images/icon/iconmonstr-map-2-240.svg",
                        semanticsLabel: 'map',),*/
                      Icon(Umenaviicon1.iconmonstr_map_2_240,size:250),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("Slide Pazzle"),
                            subtitle: Text("スライドパズル\nすごく見づらい"),
                          )
                      )
                    ],
                  )
              )
          ),InkWell(
              onTap: (){
                HapticFeedback.heavyImpact();
                Navigator.push(context,MaterialPageRoute(builder: (conkun) => MyApp()));
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      /*SvgPicture.asset("images/icon/tetris-svgrepo-com.svg",
                        semanticsLabel: 'map',height:320,width:320),*/
                      Icon(Umenaviicon1.tetris_svgrepo_com,size:320),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("Tetris Pazzle"),
                            subtitle: Text("何の変哲もないテトリス"),
                          )
                      )
                    ],
                  )
              )
          ),
        ],
      );/*,
    );*/
  }
}
import 'package:flutter/material.dart';
class miniGameTapkun extends StatefulWidget {
  /*const miniGameTapkun({
    @required String text,
    @required Function onTap
  })
      :this._text=text,
        this._onTap=onTap;
  final String _text;
  final Function _onTap;*/
  final String text;
  final Function onTap;
  miniGameTapkun(this.text,this.onTap);
  @override
  _miniGameTapkunState createState()=>_miniGameTapkunState();
}
class _miniGameTapkunState extends State<miniGameTapkun>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color buttoncolor;
    Color textcolor;
    if(widget.text == "On"){
      buttoncolor=Colors.yellow;
      textcolor=Colors.black;
    }else{
      buttoncolor=Colors.black;
      textcolor=Colors.white;
    }
    return new Material(
      type:MaterialType.button,
        color: buttoncolor,
        child:InkWell(
      onTap: (){
        widget.onTap();
      },
      child:Center(child:Text(widget.text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: textcolor,
          )),
      )
    ));
  }
}
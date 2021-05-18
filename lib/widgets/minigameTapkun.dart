import 'package:flutter/material.dart';
class miniGameTapkun extends StatelessWidget{
  const miniGameTapkun({
  @required String text,
    @required Function onTap
})
  :this._text=text,
  this._onTap=onTap;
  final String _text;
  final Function _onTap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        _onTap();
      },
      child:Center(child:Text(_text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          )),
      )
    );
  }
}
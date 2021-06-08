import 'package:flutter/material.dart';
const double _barHeight= 6.0;
class LoadProgressBottom extends LinearProgressIndicator implements PreferredSizeWidget{
  LoadProgressBottom({
    Key key,
    double value,
    Color backgroundColor,
    Animation<Color> valueColor
}):super(
    key:key,
    value: value,
    backgroundColor: backgroundColor,
    valueColor: valueColor
  ){
    preferredSize=Size(double.infinity,_barHeight);
  }
  @override
  Size preferredSize;
}
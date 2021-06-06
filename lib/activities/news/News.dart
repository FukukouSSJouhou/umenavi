import 'package:flutter/material.dart';
class NewsMainPage extends StatefulWidget{
  @override
  _NewsMainPageState createState() => new _NewsMainPageState();
}
class _NewsMainPageState extends State<NewsMainPage>{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text("News!!")
      ],
    );
  }

}
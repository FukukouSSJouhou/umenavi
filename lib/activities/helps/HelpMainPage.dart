import "package:flutter/material.dart";
class HelpItemkun{
  bool isExpanded;
  Widget headwidget;
  Widget bodywidget;
  HelpItemkun(this.isExpanded,this.headwidget,this.bodywidget);
}
class HelpMainPage extends StatefulWidget{
  @override
  _HelpMainPageState createState() => _HelpMainPageState();
}
class _HelpMainPageState extends State<HelpMainPage>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Help UMENAVI"),
      ),
      body: ListView(
        children: [

        ],
      )
    );
  }
}
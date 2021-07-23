import 'package:flutter/material.dart';
class SchedulePage extends StatefulWidget{
  @override
  _SchedulePageState createState()=>new _SchedulePageState();
}
class _SchedulePageState extends State<SchedulePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("Schedule"),
      ),
      body: ListView(
        children: [
        ],
      ),
    );
  }
}
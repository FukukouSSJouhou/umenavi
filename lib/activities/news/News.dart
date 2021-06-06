import 'package:flutter/material.dart';
class NewsMainPage extends StatefulWidget{
  @override
  _NewsMainPageState createState() => new _NewsMainPageState();
}
class _NewsMainPageState extends State<NewsMainPage>{
  DateTime updtime=new DateTime.now();
  Future<void> _onRefresh() async {
    setState(() {
      updtime=DateTime.now();
    });
  }
  @override
  Widget build(BuildContext context) {
    return  RefreshIndicator(child:ListView(

      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        Text("Time : " +updtime.toString() )
      ],
    ), onRefresh: _onRefresh);
  }

}
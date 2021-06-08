import 'package:flutter/material.dart';
class NewsMainPage extends StatefulWidget{
  @override
  _NewsMainPageState createState() => new _NewsMainPageState();
}
class _NewsMainPageState extends State<NewsMainPage>{
  DateTime updtime=new DateTime.now();
  double counter=0.0;
  bool isVisibleProgress=false;
  Future<void> _onRefresh() async {
    isVisibleProgress=true;
    setState(() {
      updtime=DateTime.now();
      if(counter < 1.00) {
        counter = counter + 0.10;
      }else{
        counter=0.0;
        isVisibleProgress=false;
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return  RefreshIndicator(child:ListView(

      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        LinearProgressIndicator(
          value: counter,
          backgroundColor: isVisibleProgress ? Theme.of(context).backgroundColor : Theme.of(context).scaffoldBackgroundColor,
        ),
        Text("Time : " +updtime.toString() )
      ],
    ), onRefresh: _onRefresh);
  }

}
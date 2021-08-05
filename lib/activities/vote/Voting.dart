import 'package:UMENAVI/bunkasaidbkun/BunkasaiDBSet.dart';
import "package:flutter/material.dart";
class VotingPage extends StatefulWidget{
  final String user_id;
  final String user_email;
  final BunkasaiClasskun GoodCls1;
  final BunkasaiClasskun GoodCls2;
  final BunkasaiClasskun GoodCls3;
  final BunkasaiClasskun MVPCls;
  final BunkasaiClasskun KyakuhonGoodCls;
  VotingPage({Key key,@required this.user_id,@required this.user_email,@required this.GoodCls1,@required this.GoodCls2,@required this.GoodCls3,@required this.KyakuhonGoodCls,@required this.MVPCls}):super(key:key);
  _VotingPageState createState() => _VotingPageState();
}
class _VotingPageState extends State<VotingPage>{
  @override
  Widget build(BuildContext context){
    List<String> bunkasailskun=[];
    bunkasailskun.add(BunkasaiClasskun_to_str(widget.GoodCls1));
    bunkasailskun.add(BunkasaiClasskun_to_str(widget.GoodCls2));
    bunkasailskun.add(BunkasaiClasskun_to_str(widget.GoodCls3));

    return Scaffold(
      appBar: AppBar(
        title: Text("投票中..."),
      ),
      body:FutureBuilder(
        future: sendKun(context),
        builder: (BuildContext conkun,AsyncSnapshot<void> snapshot){
          return ListView(
            children: [
              ListTile(
                title: Text(widget.user_email)
              ),
              ListTile(
                  title: Text(widget.user_id)
              ),
              ListTile(
                  title: Text(BunkasaiClasskun_to_str(widget.MVPCls))
              ),
              ListTile(
                  title: Text(BunkasaiClasskun_to_str(widget.KyakuhonGoodCls))
              ),
              ListTile(
                  title: Text(bunkasailskun[0])
              ),
              ListTile(
                  title: Text(bunkasailskun[1])
              ),
              ListTile(
                  title: Text(bunkasailskun[2])
              ),


            ],
          );
        },
      )
    );
  }
  Future<void> sendKun(BuildContext context) async{

  }
}
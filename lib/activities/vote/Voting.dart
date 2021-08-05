import 'package:UMENAVI/bunkasaidbkun/BunkasaiDBSet.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
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
    List<int> bunkasailskun=[];
    bunkasailskun.add(widget.GoodCls1.index);
    bunkasailskun.add(widget.GoodCls2.index);
    bunkasailskun.add(widget.GoodCls3.index);

    return Scaffold(
      appBar: AppBar(
        title: Text("投票中..."),
      ),
      body:FutureBuilder(
        future: sendKun(context),
        builder: (BuildContext conkun,AsyncSnapshot<bool> snapshot) {
          if (snapshot.hasData) {
            String msgpartkun="";
            if(snapshot.data == true){
              msgpartkun="\n\n送信完了しました。\n";
            }else{
              msgpartkun="\n\n送信に失敗しました。\n";
            }
            return
              InkWell(
                onTap: (){
                 Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: ListView(
                  children: [
                    Center(
                      child: Text(msgpartkun,
                      style: TextStyle(fontSize: 35),)
                    ),
                    Center(
                      child: Text("画面をタップしてください。\n\n\n\n\n",
                      style: TextStyle(fontSize: 20),)
                    ),
                    Center(
                      child: SizedBox(
                        width: 250,
                        height: 250,
                        child: CircularProgressIndicator(
                          strokeWidth: 15,
                          value: 1.0,
                        ),
                      )
                    ),
                  ]
                )
              );
          } else {
            return ListView(
                children: [
                  Center(
                      child: Text("\n\n送信中です\n\n\n\n\n",
                        style: TextStyle(fontSize: 35),)
                  ),
                  Center(
                      child: SizedBox(
                        width: 250,
                        height: 250,
                        child: CircularProgressIndicator(
                          strokeWidth: 15,
                        ),
                      )
                  ),
                ]);
          }
        }
      )
    );
  }
  Future<bool> sendKun(BuildContext context) async{
    bool resultdata=true;
    return resultdata;
  }
}
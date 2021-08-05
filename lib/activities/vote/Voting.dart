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
            if(snapshot.data == true) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("送信成功です!")
                  )
              );
            }else{

              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("送信に失敗しました。")
                  )
              );
            }
            Navigator.popUntil(context, (route) => route.isFirst);
            return ListView(
              children: [
                Center(
                  child: Text("バグってるみたいですねw"),
                )
              ],
            );
          } else {
            return ListView(
                children: [
                  Center(
                      child: Text("\n\n処理中です\n\n\n\n\n",
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
    return true;
  }
}
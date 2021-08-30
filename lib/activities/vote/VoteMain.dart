import 'dart:convert';

import 'package:UMENAVI/activities/vote/Voting.dart';
import 'package:UMENAVI/bunkasaidbkun/BunkasaiDBSet.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
class VoteMainPage extends StatefulWidget{
  User user;
  GoogleSignInAccount googleUser;
  GoogleSignInAuthentication googleAuth;
  UserCredential usercre;
  User fbuser;
  AuthCredential credential;
  final GoogleSignIn google_signin;
  final FirebaseAuth auth;

  VoteMainPage({Key key,this.google_signin,this.auth}):super(key: key);
  _VoteMainPageState createState()=>_VoteMainPageState();
}

class _VoteMainPageState extends State<VoteMainPage>{
  BunkasaiClasskun GoodCls1=BunkasaiClasskun.NONEKUN;
  BunkasaiClasskun GoodCls2=BunkasaiClasskun.NONEKUN;
  BunkasaiClasskun GoodCls3=BunkasaiClasskun.NONEKUN;
  var goodCls1Controller=TextEditingController();
  var goodCls2Controller=TextEditingController();
  var goodCls3Controller=TextEditingController();
  BunkasaiClasskun MVPCls1=BunkasaiClasskun.NONEKUN;
  BunkasaiClasskun KyakuhonCls1=BunkasaiClasskun.NONEKUN;
  var mvpCls1Controller=TextEditingController();
  var kyakuhonCls1Controller=TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context){
    goodCls1Controller.value=TextEditingValue(
      text:BunkasaiClasskun_to_str(GoodCls1),
      selection: TextSelection.fromPosition(
        TextPosition(offset: "aaa".length)
      )
    );
    goodCls2Controller.value=TextEditingValue(
        text:BunkasaiClasskun_to_str(GoodCls2),
        selection: TextSelection.fromPosition(
            TextPosition(offset: "aaa".length)
        )
    );
    goodCls3Controller.value=TextEditingValue(
        text:BunkasaiClasskun_to_str(GoodCls3),
        selection: TextSelection.fromPosition(
            TextPosition(offset: "aaa".length)
        )
    );
    mvpCls1Controller.value=TextEditingValue(
        text:BunkasaiClasskun_to_str(MVPCls1),
        selection: TextSelection.fromPosition(
            TextPosition(offset: "aaa".length)
        )
    );
    kyakuhonCls1Controller.value=TextEditingValue(
        text:BunkasaiClasskun_to_str(KyakuhonCls1),
        selection: TextSelection.fromPosition(
            TextPosition(offset: "aaa".length)
        )
    );
    return Scaffold(
      body: FutureBuilder(
        future: loginkun(context),
        builder:(BuildContext context,AsyncSnapshot<void> snapshot){
          if(widget.user != null) {
            return ListView(
              children: [
                Center(
                  child:Text("\n良かったと思うクラス(3つ)\n",style:TextStyle(fontSize: 20)),
                ),TextField(readOnly: true,
                  controller: goodCls1Controller,
                  onTap: (){
                      List<Text> bunkasaicl1=[];
                      BunkasaiClasskun.values.forEach((valueniki) {
                        if(valueniki != GoodCls2 ){
                          if(valueniki != GoodCls3){
                            if(valueniki != BunkasaiClasskun.NONEKUN){
                              bunkasaicl1.add(Text(BunkasaiClasskun_to_str(valueniki)));
                            }
                          }
                        }
                      }
                      );
                      showModalBottomSheet(context: context, builder: (_ct){
                        return Container(
                          child:GestureDetector(
                            onTap: () => Navigator.pop(_ct),
                            child:CupertinoPicker(itemExtent: 30,
                              backgroundColor: Colors.white,
                              children: bunkasaicl1,
                              onSelectedItemChanged: (int vl){
                                setState(() {
                                  GoodCls1=str_to_bunkasaiClass(bunkasaicl1[vl].data);
                                });
                             },
                            )
                          ),
                          height: MediaQuery.of(context).size.height /3,

                        );
                      });
                  },
                    decoration: InputDecoration(
                      border:OutlineInputBorder(),
                      labelText: "クラス名",
                    ),
                  ),
                Text("\n",style:TextStyle(fontSize: 20)),
                TextField(readOnly: true,
                  controller: goodCls2Controller,
                  onTap: (){
                    List<Text> bunkasaicl2=[];
                    BunkasaiClasskun.values.forEach((valueniki) {
                      if(valueniki != GoodCls1 ){
                        if(valueniki != GoodCls3){
                          if(valueniki != BunkasaiClasskun.NONEKUN){
                            bunkasaicl2.add(Text(BunkasaiClasskun_to_str(valueniki)));
                          }
                        }
                      }
                    }
                    );
                    showModalBottomSheet(context: context, builder: (_ct){
                      return Container(
                        child:GestureDetector(
                            onTap: () => Navigator.pop(_ct),
                            child:CupertinoPicker(itemExtent: 30,
                              backgroundColor: Colors.white,
                              children: bunkasaicl2,
                              onSelectedItemChanged: (int vl){
                                setState(() {
                                  GoodCls2=str_to_bunkasaiClass(bunkasaicl2[vl].data);
                                });
                              },
                            )
                        ),
                        height: MediaQuery.of(context).size.height /3,

                      );
                    });
                  },
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    labelText: "クラス名",
                  ),
                ),
                Text("\n",style:TextStyle(fontSize: 20)),
                TextField(readOnly: true,
                  controller: goodCls3Controller,
                  onTap: (){
                    List<Text> bunkasaicl3=[];
                    BunkasaiClasskun.values.forEach((valueniki) {
                      if(valueniki != GoodCls1 ){
                        if(valueniki != GoodCls2){
                          if(valueniki != BunkasaiClasskun.NONEKUN){
                            bunkasaicl3.add(Text(BunkasaiClasskun_to_str(valueniki)));
                          }
                        }
                      }
                    }
                    );
                    showModalBottomSheet(context: context, builder: (_ct){
                      return Container(
                        child:GestureDetector(
                            onTap: () => Navigator.pop(_ct),
                            child:CupertinoPicker(itemExtent: 30,
                              backgroundColor: Colors.white,
                              children: bunkasaicl3,
                              onSelectedItemChanged: (int vl){
                                setState(() {
                                  GoodCls3=str_to_bunkasaiClass(bunkasaicl3[vl].data);
                                });
                              },
                            )
                        ),
                        height: MediaQuery.of(context).size.height /3,

                      );
                    });
                  },
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    labelText: "クラス名",
                  ),
                ),

                Center(
                  child:Text("\n良かった出演者がいるクラス\n",style:TextStyle(fontSize: 20)),
                ),
                TextField(readOnly: true,
                  controller: mvpCls1Controller,
                  onTap: (){
                    List<Text> mvpcls=[];
                    BunkasaiClasskun.values.forEach((valueniki) {
                      if (valueniki != BunkasaiClasskun.NONEKUN) {
                        mvpcls.add(Text(BunkasaiClasskun_to_str(valueniki)));
                      }
                    }
                    );
                    showModalBottomSheet(context: context, builder: (_ct){
                      return Container(
                        child:GestureDetector(
                            onTap: () => Navigator.pop(_ct),
                            child:CupertinoPicker(itemExtent: 30,
                              backgroundColor: Colors.white,
                              children: mvpcls,
                              onSelectedItemChanged: (int vl){
                                setState(() {
                                  MVPCls1=str_to_bunkasaiClass(mvpcls[vl].data);
                                });
                              },
                            )
                        ),
                        height: MediaQuery.of(context).size.height /3,

                      );
                    });
                  },
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    labelText: "クラス名",
                  ),
                ),
                Center(
                  child:Text("\n良かった出演者\n",style:TextStyle(fontSize: 20)),
                ),
                Center(
                  child:Text("\n構成•脚本が良かったクラス\n",style:TextStyle(fontSize: 20)),
                ),
                TextField(readOnly: true,
                  controller: kyakuhonCls1Controller,
                  onTap: (){
                    List<Text> kyakucls=[];
                    BunkasaiClasskun.values.forEach((valueniki) {
                      if (valueniki != BunkasaiClasskun.NONEKUN) {
                        kyakucls.add(Text(BunkasaiClasskun_to_str(valueniki)));
                      }
                    }
                    );
                    showModalBottomSheet(context: context, builder: (_ct){
                      return Container(
                        child:GestureDetector(
                            onTap: () => Navigator.pop(_ct),
                            child:CupertinoPicker(itemExtent: 30,
                              backgroundColor: Colors.white,
                              children: kyakucls,
                              onSelectedItemChanged: (int vl){
                                setState(() {
                                  KyakuhonCls1=str_to_bunkasaiClass(kyakucls[vl].data);
                                });
                              },
                            )
                        ),
                        height: MediaQuery.of(context).size.height /3,

                      );
                    });
                  },
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    labelText: "クラス名",
                  ),
                ),


              ]
            );
          }else{
            return ListView(
                children:[
                  Center(
                    child:Text("\n\n処理中です\n\n\n\n\n",
                    style: TextStyle(fontSize: 35),)
                  ),
                  Center(
                    child:SizedBox(
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
      ),
      appBar: AppBar(
        title:Text("Vote"),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: (){
              HapticFeedback.heavyImpact();
              if(widget.user == null){
                return;
              }
              if(GoodCls1 == BunkasaiClasskun.NONEKUN || GoodCls2 == BunkasaiClasskun.NONEKUN || GoodCls3 == BunkasaiClasskun.NONEKUN
              || KyakuhonCls1 == BunkasaiClasskun.NONEKUN || MVPCls1 == BunkasaiClasskun.NONEKUN){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("全部記入してから送信しましょう。無効票はダメです。")
                    )
                );
                return;
              }
              Navigator.push(context,MaterialPageRoute(builder: (_) =>
                  VotingPage(user_email: widget.user.email,user_id: widget.user.uid,
                    GoodCls1: GoodCls1, GoodCls2: GoodCls2,GoodCls3: GoodCls3,
                    KyakuhonGoodCls: KyakuhonCls1,MVPCls: MVPCls1,
                  )
              ));
            },
            tooltip: "送信",
          ),
          PopupMenuButton<int>(
            itemBuilder: (context2)=>[
              PopupMenuItem(
                child: Text("ログアウト"),
                value:0 ,
              )
            ],
            onSelected: (valkun) async{
              if(valkun == 0){
                widget.auth.signOut();
                widget.google_signin.signOut();
                Navigator.of(context).pop();
              }
            },
          )
        ],
      )
    );
  }
  Future<void> loginkun(BuildContext context) async{
    try {
      widget.googleUser = await widget.google_signin.signIn(

      );
      if (widget.googleUser != null) {
        if (widget.googleUser.email.endsWith(
            "fukushima-h@momo.fcs.ed.jp") == true ||
            widget.googleUser.email == "umekoujouhouhan@gmail.com"){
          widget.googleAuth = await widget.googleUser.authentication;
          widget.credential = GoogleAuthProvider.credential(
              accessToken: widget.googleAuth.accessToken,
              idToken: widget.googleAuth.idToken
          );
          widget.usercre = await widget.auth.signInWithCredential(widget.credential);
          widget.user = widget.usercre.user;
          final int dver=0;
          var prefkun=await SharedPreferences.getInstance();
          var dataverkun=prefkun.getInt("dataver");
          if( dataverkun ==null){

          }else if (dataverkun != dver){
            FirebaseStorage storage = FirebaseStorage.instance;
            Reference textRef = storage.ref().child("baien_data_min.json");
            var data = await textRef.getData();
            Map<String, dynamic> map = jsonDecode(ascii.decode(data));
            await prefkun.setInt("dataver", map["version"]);
            await prefkun.setString("jsondata", ascii.decode(data));
          }
          print(prefkun.getString("jsondata"));
        }else{

          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text("福高生以外はお家でゲームでもして、どうぞ。")
              )
          );
          //Logout
          widget.google_signin.signOut();
          Navigator.of(context).pop();
        }
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content:Text("ログイン失敗!")
            )
        );
        Navigator.of(context).pop();
      }
    }
    on PlatformException catch (e) {
      if(e.code == "popup_blocked_by_browser"){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content:Text("ブラウザ設定でポップアップを許可してください。 ")
            )
        );
        Navigator.of(context).pop();
      }else{

        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content:Text("閉じたりするとこうなるぞ! ")
            )
        );
        Navigator.of(context).pop();
      }
    }
    on Exception catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content:Text("閉じたりするとこうなるぞ! ")
          )
      );
      Navigator.of(context).pop();
    }
  }
}
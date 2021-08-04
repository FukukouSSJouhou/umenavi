import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
enum BunkasaiClasskun{
  C11,
  C12,
  C13,
  C14,
  C15,
  C16,
  C17,
  C21,
  C22,
  C23,
  C24,
  C25,
  C26,
  C27,
  C31,
  C32,
  C33,
  C34,
  C35,
  C36,
  C37,
  NONEKUN
}

class _VoteMainPageState extends State<VoteMainPage>{
  BunkasaiClasskun GoodCls1;
  BunkasaiClasskun GoodCls2;
  BunkasaiClasskun GoodCls3;
  var goodCls1Controller=TextEditingController();
  var goodCls2Controller=TextEditingController();
  var goodCls3Controller=TextEditingController();
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
  String BunkasaiClasskun_to_str(BunkasaiClasskun b1){
    String resultkun="";
    switch(b1){
      case BunkasaiClasskun.C11:
        return "1-1";
        break;
      case BunkasaiClasskun.C12:
        return "1-2";
        break;
      case BunkasaiClasskun.C13:
        return "1-3";
        break;
      case BunkasaiClasskun.C14:
        return "1-4";
        break;
      case BunkasaiClasskun.C15:
        return "1-5";
        break;
      case BunkasaiClasskun.C16:
        return "1-6";
        break;
      case BunkasaiClasskun.C17:
        return "1-7";
        break;
      case BunkasaiClasskun.C21:
        return "2-1";
        break;
      case BunkasaiClasskun.C22:
        return "2-2";
        break;
      case BunkasaiClasskun.C23:
        return "2-3";
        break;
      case BunkasaiClasskun.C24:
        return "2-4";
        break;
      case BunkasaiClasskun.C25:
        return "2-5";
        break;
      case BunkasaiClasskun.C26:
        return "2-6";
        break;
      case BunkasaiClasskun.C27:
        return "2-7";
        break;
      case BunkasaiClasskun.C31:
        return "3-1";
        break;
      case BunkasaiClasskun.C32:
        return "3-2";
        break;
      case BunkasaiClasskun.C33:
        return "3-3";
        break;
      case BunkasaiClasskun.C34:
        return "3-4";
        break;
      case BunkasaiClasskun.C35:
        return "3-5";
        break;
      case BunkasaiClasskun.C36:
        return "3-6";
        break;
      case BunkasaiClasskun.C37:
        return "3-7";
        break;
      case BunkasaiClasskun.NONEKUN:
        return "none";
        break;
    }
    return resultkun;
  }
  BunkasaiClasskun str_to_bunkasaiClass(String txtun){
    switch(txtun){
      case "1-1":
        return BunkasaiClasskun.C11;
        break;
      case "1-2":
        return BunkasaiClasskun.C12;
        break;
      case "1-3":
        return BunkasaiClasskun.C13;
        break;
      case "1-4":
        return BunkasaiClasskun.C14;
        break;
      case "1-5":
        return BunkasaiClasskun.C15;
        break;
      case "1-6":
        return BunkasaiClasskun.C16;
        break;
      case "1-7":
        return BunkasaiClasskun.C17;
        break;
      case "2-1":
        return BunkasaiClasskun.C21;
        break;
      case "2-2":
        return BunkasaiClasskun.C22;
        break;
      case "2-3":
        return BunkasaiClasskun.C23;
        break;
      case "2-4":
        return BunkasaiClasskun.C24;
        break;
      case "2-5":
        return BunkasaiClasskun.C25;
        break;
      case "2-6":
        return BunkasaiClasskun.C26;
        break;
      case "2-7":
        return BunkasaiClasskun.C27;
        break;
      case "3-1":
        return BunkasaiClasskun.C31;
        break;
      case "3-2":
        return BunkasaiClasskun.C32;
        break;
      case "3-3":
        return BunkasaiClasskun.C33;
        break;
      case "3-4":
        return BunkasaiClasskun.C34;
        break;
      case "3-5":
        return BunkasaiClasskun.C35;
        break;
      case "3-6":
        return BunkasaiClasskun.C36;
        break;
      case "3-7":
        return BunkasaiClasskun.C37;
        break;
      case "none":
        return BunkasaiClasskun.NONEKUN;
        break;
    }
    return BunkasaiClasskun.C15;
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
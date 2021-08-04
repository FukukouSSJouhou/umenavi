import 'package:firebase_auth/firebase_auth.dart';
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
  C37
}
class _VoteMainPageState extends State<VoteMainPage>{
  BunkasaiClasskun GoodCls1;
  BunkasaiClasskun GoodCls2;
  BunkasaiClasskun GoodCls3;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: FutureBuilder(
        future: loginkun(context),
        builder:(BuildContext context,AsyncSnapshot<void> snapshot){
          if(widget.user != null) {
            return ListView(
              children: [

              ],
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
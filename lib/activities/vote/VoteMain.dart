import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
class _VoteMainPageState extends State<VoteMainPage>{

  Future<void> loginkun(BuildContext context) async{
    try {
      widget.googleUser = await widget.google_signin.signIn();
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
    } catch (e) {
      print(e);

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content:Text("閉じたりするとこうなるぞ!")
          )
      );
      Navigator.of(context).pop();
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Vote Logins??"),
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
      ),
      body: FutureBuilder(
        future: loginkun(context),
        builder:(BuildContext context,AsyncSnapshot<void> snapshot){
          if(widget.user != null) {
            return ListView(
              children: [
                Text("User id : " + widget.user.uid,
                  style: TextStyle(
                      fontSize: 30
                  ),),
                Text("User name : " + widget.user.displayName,
                  style: TextStyle(
                      fontSize: 30
                  ),),

                Text("User email : " + widget.user.email,
                  style: TextStyle(
                      fontSize: 30
                  ),)
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
      )
    );
  }
}
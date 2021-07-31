import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
class VoteMainPage extends StatefulWidget{
  final User user;

  final GoogleSignIn google_signin;
  final FirebaseAuth auth;

  VoteMainPage({Key key,this.user,this.google_signin,this.auth}):super(key: key);
  _VoteMainPageState createState()=>_VoteMainPageState();
}
class _VoteMainPageState extends State<VoteMainPage>{

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
      body: ListView(
        children: [
          Text("User id : " + widget.user.uid,
          style:TextStyle(
            fontSize:30
          ),),
          Text("User name : " + widget.user.displayName,
            style:TextStyle(
                fontSize:30
            ),),

          Text("User email : " + widget.user.email,
            style:TextStyle(
                fontSize:30
            ),)
        ],
      ),
    );
  }
}
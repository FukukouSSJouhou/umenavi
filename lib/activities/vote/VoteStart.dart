import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
class VoteStartPage extends StatelessWidget{

  final _google_signin  = GoogleSignIn(scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ]);
  GoogleSignInAccount googleUser;
  GoogleSignInAuthentication googleAuth;
  AuthCredential credential;
  final _auth=FirebaseAuth.instance;
  UserCredential usercre;
  User fbuser;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:ListView(
        children: [
          MaterialButton(
            child: Text("Google"),
            onPressed: () async{
              googleUser=await _google_signin.signIn();
              googleAuth=await googleUser.authentication;
              credential=GoogleAuthProvider.credential(
                accessToken: googleAuth.accessToken,
                idToken: googleAuth.idToken
              );
              try{
                usercre=await _auth.signInWithCredential(credential);
                fbuser=usercre.user;
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content:Text(fbuser.uid)
                    )
                );
              }catch(e){
                print(e);
              }
            },
          )
        ],
      )
    );
  }
}
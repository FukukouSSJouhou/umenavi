import 'package:flutter/material.dart';
import "package:umezitu/widgets/minigameTapkun.dart";
class MiniGame1 extends StatefulWidget{
  @override
  _MiniGame1State createState()=>new _MiniGame1State();
}
class _MiniGame1State extends State<MiniGame1>{
  String No1State="Off";
  String No2State="Off";
  String No3State="Off";
  String No4State="Off";
  String No5State="Off";
  String No6State="Off";
  String No7State="Off";
  String No8State="Off";
  String No9State="Off";
  String No10State="Off";
  String No11State="Off";
  String No12State="Off";
  String No13State="Off";
  String No14State="Off";
  String No15State="Off";
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MiniGame"),
      ),
      body:GridView.count(
        crossAxisCount: 5,
    children: <Widget>[
      new miniGameTapkun(No1State,() {
        setState(() {

          if (No1State == "On") {
            No1State = "Off";
          } else {
            No1State = "On";
          }

          if (No2State == "On") {
            No2State = "Off";
          } else {
            No2State = "On";
          }

          if (No6State == "On") {
            No6State = "Off";
          } else {
            No6State = "On";
          }
        });
      }),
      new miniGameTapkun(
        No2State,() {


        setState(() {
          if(No1State == "On"){
      No1State = "Off";
          }else{
      No1State = "On";
          }
          if(No3State == "On"){
            No3State = "Off";
          }else{
            No3State = "On";
          }

          if (No2State == "On") {
            No2State = "Off";
          } else {
            No2State = "On";
          }

          if (No7State == "On") {
            No7State = "Off";
          } else {
            No7State = "On";
          }
        });
        },
      ),
      new miniGameTapkun(
        No3State,() {


        setState(() {
          if(No4State == "On"){
            No4State = "Off";
          }else{
            No4State = "On";
          }
          if(No3State == "On"){
            No3State = "Off";
          }else{
            No3State = "On";
          }

          if (No2State == "On") {
            No2State = "Off";
          } else {
            No2State = "On";
          }

          if (No8State == "On") {
            No8State = "Off";
          } else {
            No8State = "On";
          }
        });
      },
      ),
      new miniGameTapkun(
        No4State,() {


        setState(() {
          if(No4State == "On"){
            No4State = "Off";
          }else{
            No4State = "On";
          }
          if(No3State == "On"){
            No3State = "Off";
          }else{
            No3State = "On";
          }

          if (No5State == "On") {
            No5State = "Off";
          } else {
            No5State = "On";
          }

          if (No9State == "On") {
            No9State = "Off";
          } else {
            No9State = "On";
          }
        });
      },
      ),      new miniGameTapkun(
        No5State,() {


        setState(() {
          if(No4State == "On"){
            No4State = "Off";
          }else{
            No4State = "On";
          }

          if (No5State == "On") {
            No5State = "Off";
          } else {
            No5State = "On";
          }

          if (No10State == "On") {
            No10State = "Off";
          } else {
            No10State = "On";
          }
        });
      },
      ),new miniGameTapkun(
        No6State,() {


        setState(() {
          if(No1State == "On"){
            No1State = "Off";
          }else{
            No1State = "On";
          }

          if (No7State == "On") {
            No7State = "Off";
          } else {
            No7State = "On";
          }

          if (No6State == "On") {
            No6State = "Off";
          } else {
            No6State = "On";
          }
          if(No11State == "On"){
            No11State = "Off";
          }else{
            No11State = "On";
          }
        });
      },
      ),
      new miniGameTapkun(
        No7State,() {


        setState(() {
          if(No2State == "On"){
            No2State = "Off";
          }else{
            No2State = "On";
          }

          if (No7State == "On") {
            No7State = "Off";
          } else {
            No7State = "On";
          }

          if (No6State == "On") {
            No6State = "Off";
          } else {
            No6State = "On";
          }
          if(No12State == "On"){
            No12State = "Off";
          }else{
            No12State = "On";
          }
          if(No8State == "On"){
            No8State = "Off";
          }else{
            No8State = "On";
          }
        });
      },
      ),      new miniGameTapkun(
        No8State,() {


        setState(() {
          if(No3State == "On"){
            No3State = "Off";
          }else{
            No3State = "On";
          }

          if (No7State == "On") {
            No7State = "Off";
          } else {
            No7State = "On";
          }

          if (No9State == "On") {
            No9State = "Off";
          } else {
            No9State = "On";
          }
          if(No13State == "On"){
            No13State = "Off";
          }else{
            No13State = "On";
          }
          if(No8State == "On"){
            No8State = "Off";
          }else{
            No8State = "On";
          }
        });
      },
      ),new miniGameTapkun(
        No9State,() {


        setState(() {
          if(No4State == "On"){
            No4State = "Off";
          }else{
            No4State = "On";
          }

          if (No10State == "On") {
            No10State = "Off";
          } else {
            No10State = "On";
          }

          if (No9State == "On") {
            No9State = "Off";
          } else {
            No9State = "On";
          }
          if(No14State == "On"){
            No14State = "Off";
          }else{
            No14State = "On";
          }
          if(No8State == "On"){
            No8State = "Off";
          }else{
            No8State = "On";
          }
        });
      },
      )
    ]
      )
    );
  }
}
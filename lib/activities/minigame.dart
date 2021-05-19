import 'package:flutter/material.dart';
import "package:umezitu/widgets/minigameTapkun.dart";
import "package:umezitu/activities/PazzleScore.dart";
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
  String No9State="On";
  String No10State="Off";
  String No11State="Off";
  String No12State="Off";
  String No13State="Off";
  String No14State="Off";
  String No15State="Off";
  String No16State="Off";
  String No17State="Off";
  String No18State="Off";
  String No19State="Off";
  String No20State="Off";
  String No21State="Off";
  String No22State="Off";
  String No23State="Off";
  String No24State="Off";
  String No25State="Off";
  void reset_state(){
    setState(() {

      No1State="Off";
      No2State="Off";
      No3State="Off";
      No4State="Off";
      No5State="Off";
      No6State="Off";
      No7State="Off";
      No8State="Off";
      No9State="On";
      No10State="Off";
      No11State="Off";
      No12State="Off";
      No13State="Off";
      No14State="Off";
      No15State="Off";
      No16State="Off";
      No17State="Off";
      No18State="Off";
      No19State="Off";
      No20State="Off";
      No21State="Off";
      No22State="Off";
      No23State="Off";
      No24State="Off";
      No25State="Off";
      stepcountkun=0;
    });
  }
  int stepcountkun=0;
  void countup(){
    setState(() {
      stepcountkun++;
    });
  }
  void check_clear(){
    if(No1State=="On" &&
        No2State=="On" &&
        No3State=="On" &&
        No4State=="On" &&
        No5State=="On" &&
        No6State=="On" &&
        No7State=="On" &&
        No8State=="On" &&
        No9State=="On" &&
        No10State=="On" &&
        No11State=="On" &&
        No12State=="On" &&
        No13State=="On" &&
        No14State=="On" &&
        No15State=="On" &&
        No16State=="On" &&
        No17State=="On" &&
        No18State=="On" &&
        No19State=="On" &&
        No20State=="On" &&
        No21State=="On" &&
        No22State=="On" &&
        No23State=="On" &&
        No24State=="On" &&
        No25State=="On" ){
      /*
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Clear"),
          content: Text("Clear Yeah!!"),
          actions: <Widget>[
            MaterialButton(
              child: Text("Cancel"),
              onPressed: (){

                reset_state();
                Navigator.pop(context);
                },
            ),
            MaterialButton(
              child: Text("OK"),
              onPressed: (){
                reset_state();
                //Navigator.pop(context);

                },
        ),
        ]
        );}
      });*/
      int stepbuff=stepcountkun;
      reset_state();
      Navigator.push(this.context,
      MaterialPageRoute(builder: (context) => PazzleScorePage(stepbuff)));
    }
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MiniGame"),
      ),
      body:ListView(children:[
        Center(
          child: Padding(
      padding:EdgeInsets.all(30.0),
      child:Text("Step : " + stepcountkun.toString(),
          style:TextStyle(
            fontSize: 40
          ))),

        ),
        GridView.count(
          shrinkWrap: true,
        crossAxisCount: 5,
    children: <Widget>[
      new miniGameTapkun(No1State,() {
        setState(() { countup();

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

        check_clear();
      }),
      new miniGameTapkun(
        No2State,() {


        setState(() { countup();
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

        check_clear();
        },
      ),
      new miniGameTapkun(
        No3State,() {


        setState(() { countup();
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

        check_clear();
      },
      ),
      new miniGameTapkun(
        No4State,() {


        setState(() { countup();
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

        check_clear();
      },
      ),      new miniGameTapkun(
        No5State,() {


        setState(() { countup();
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

        check_clear();
      },
      ),new miniGameTapkun(
        No6State,() {


        setState(() { countup();
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

        check_clear();
      },
      ),
      new miniGameTapkun(
        No7State,() {


        setState(() { countup();
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

        check_clear();
      },
      ),      new miniGameTapkun(
        No8State,() {


        setState(() { countup();
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

        check_clear();
      },
      ),new miniGameTapkun(
        No9State,() {


        setState(() { countup();
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

        check_clear();
      },
      ),
      new miniGameTapkun(
        No10State,() {


        setState(() { countup();
          if(No5State == "On"){
            No5State = "Off";
          }else{
            No5State = "On";
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
          if(No15State == "On"){
            No15State = "Off";
          }else{
            No15State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No11State,() {


        setState(() { countup();
          if(No6State == "On"){
            No6State = "Off";
          }else{
            No6State = "On";
          }

          if (No12State == "On") {
            No12State = "Off";
          } else {
            No12State = "On";
          }

          if (No11State == "On") {
            No11State = "Off";
          } else {
            No11State = "On";
          }
          if(No16State == "On"){
            No16State = "Off";
          }else{
            No16State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No12State,() {


        setState(() { countup();
          if(No7State == "On"){
            No7State = "Off";
          }else{
            No7State = "On";
          }

          if (No11State == "On") {
            No11State = "Off";
          } else {
            No11State = "On";
          }

          if (No12State == "On") {
            No12State = "Off";
          } else {
            No12State = "On";
          }
          if(No13State == "On"){
            No13State = "Off";
          }else{
            No13State = "On";
          }
          if(No17State == "On"){
            No17State = "Off";
          }else{
            No17State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No13State,() {


        setState(() { countup();
          if(No8State == "On"){
            No8State = "Off";
          }else{
            No8State = "On";
          }

          if (No14State == "On") {
            No14State = "Off";
          } else {
            No14State = "On";
          }

          if (No12State == "On") {
            No12State = "Off";
          } else {
            No12State = "On";
          }
          if(No13State == "On"){
            No13State = "Off";
          }else{
            No13State = "On";
          }
          if(No18State == "On"){
            No18State = "Off";
          }else{
            No18State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No14State,() {


        setState(() { countup();
          if(No9State == "On"){
            No9State = "Off";
          }else{
            No9State = "On";
          }

          if (No14State == "On") {
            No14State = "Off";
          } else {
            No14State = "On";
          }

          if (No15State == "On") {
            No15State = "Off";
          } else {
            No15State = "On";
          }
          if(No13State == "On"){
            No13State = "Off";
          }else{
            No13State = "On";
          }
          if(No19State == "On"){
            No19State = "Off";
          }else{
            No19State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No15State,() {


        setState(() { countup();
          if(No10State == "On"){
            No10State = "Off";
          }else{
            No10State = "On";
          }

          if (No14State == "On") {
            No14State = "Off";
          } else {
            No14State = "On";
          }

          if (No15State == "On") {
            No15State = "Off";
          } else {
            No15State = "On";
          }
          if(No20State == "On"){
            No20State = "Off";
          }else{
            No20State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No16State,() {


        setState(() { countup();
          if(No11State == "On"){
            No11State = "Off";
          }else{
            No11State = "On";
          }

          if (No17State == "On") {
            No17State = "Off";
          } else {
            No17State = "On";
          }

          if (No16State == "On") {
            No16State = "Off";
          } else {
            No16State = "On";
          }
          if(No21State == "On"){
            No21State = "Off";
          }else{
            No21State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No17State,() {


        setState(() { countup();
          if(No12State == "On"){
            No12State = "Off";
          }else{
            No12State = "On";
          }

          if (No16State == "On") {
            No16State = "Off";
          } else {
            No16State = "On";
          }

          if (No18State == "On") {
            No18State = "Off";
          } else {
            No18State = "On";
          }
          if(No17State == "On"){
            No17State = "Off";
          }else{
            No17State = "On";
          }
          if(No22State == "On"){
            No22State = "Off";
          }else{
            No22State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No18State,() {


        setState(() { countup();
          if(No13State == "On"){
            No13State = "Off";
          }else{
            No13State = "On";
          }

          if (No17State == "On") {
            No17State = "Off";
          } else {
            No17State = "On";
          }

          if (No18State == "On") {
            No18State = "Off";
          } else {
            No18State = "On";
          }
          if(No19State == "On"){
            No19State = "Off";
          }else{
            No19State = "On";
          }
          if(No23State == "On"){
            No23State = "Off";
          }else{
            No23State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No19State,() {


        setState(() { countup();
          if(No14State == "On"){
            No14State = "Off";
          }else{
            No14State = "On";
          }

          if (No20State == "On") {
            No20State = "Off";
          } else {
            No20State = "On";
          }

          if (No18State == "On") {
            No18State = "Off";
          } else {
            No18State = "On";
          }
          if(No19State == "On"){
            No19State = "Off";
          }else{
            No19State = "On";
          }
          if(No24State == "On"){
            No24State = "Off";
          }else{
            No24State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No20State,() {


        setState(() { countup();
          if(No15State == "On"){
            No15State = "Off";
          }else{
            No15State = "On";
          }


          if (No19State == "On") {
            No19State = "Off";
          } else {
            No19State = "On";
          }
          if(No20State == "On"){
            No20State = "Off";
          }else{
            No20State = "On";
          }
          if(No25State == "On"){
            No25State = "Off";
          }else{
            No25State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No21State,() {


        setState(() { countup();
          if(No16State == "On"){
            No16State = "Off";
          }else{
            No16State = "On";
          }


          if (No22State == "On") {
            No22State = "Off";
          } else {
            No22State = "On";
          }
          if(No21State == "On"){
            No21State = "Off";
          }else{
            No21State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No22State,() {


        setState(() { countup();
          if(No17State == "On"){
            No17State = "Off";
          }else{
            No17State = "On";
          }


          if (No22State == "On") {
            No22State = "Off";
          } else {
            No22State = "On";
          }
          if(No21State == "On"){
            No21State = "Off";
          }else{
            No21State = "On";
          }
          if(No23State == "On"){
            No23State = "Off";
          }else{
            No23State = "On";
          }
        });

        check_clear();
      },
      ),      new miniGameTapkun(
        No23State,() {


        setState(() { countup();
          if(No18State == "On"){
            No18State = "Off";
          }else{
            No18State = "On";
          }


          if (No22State == "On") {
            No22State = "Off";
          } else {
            No22State = "On";
          }
          if(No24State == "On"){
            No24State = "Off";
          }else{
            No24State = "On";
          }
          if(No23State == "On"){
            No23State = "Off";
          }else{
            No23State = "On";
          }
        });

        check_clear();
      },
      ),
      new miniGameTapkun(
        No24State,() {


        setState(() { countup();
          if(No19State == "On"){
            No19State = "Off";
          }else{
            No19State = "On";
          }


          if (No25State == "On") {
            No25State = "Off";
          } else {
            No25State = "On";
          }
          if(No24State == "On"){
            No24State = "Off";
          }else{
            No24State = "On";
          }
          if(No23State == "On"){
            No23State = "Off";
          }else{
            No23State = "On";
          }
        });

        check_clear();
      },
      ),

      new miniGameTapkun(
        No25State,() {


        setState(() { countup();
          if(No20State == "On"){
            No20State = "Off";
          }else{
            No20State = "On";
          }


          if (No25State == "On") {
            No25State = "Off";
          } else {
            No25State = "On";
          }
          if(No24State == "On"){
            No24State = "Off";
          }else{
            No24State = "On";
          }
        });

        check_clear();
      },
      )
    ]
      ),
        Center(
          child:Container(
            padding:EdgeInsets.all(30.0),
          child:RaisedButton(
            child: Text("Reset"),
            color:Colors.lightBlueAccent,
            onPressed: (){
                showDialog(context: context, builder: (builder){
                  return AlertDialog(
                    title:Text("Reset"),
                    content: Text("Will you reset?"),
                    actions: <Widget>[
                      MaterialButton(child:Text("Cancel"),
                      onPressed: ()=>Navigator.pop(context),),
                      MaterialButton(child:Text("Ok"),
                      onPressed: (){
                        reset_state();
                        Navigator.pop(context);
                      },)
                    ],
                  );
                });
              },
          )
          ),
        )
    ]));
  }
}
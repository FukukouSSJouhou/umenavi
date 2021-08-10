import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Check_CodePage extends StatefulWidget{
  _Check_CodePage_State createState() => _Check_CodePage_State();
}
class _Check_CodePage_State extends State<Check_CodePage>{
  TextEditingController controller = TextEditingController(text: "");
  bool hasError=false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Pin Code"),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () async{
              HapticFeedback.heavyImpact();
              if(controller.text != "114514"){
                setState(() {
                  hasError=true;
                });
              }else{

                var prefkun=await SharedPreferences.getInstance();
                prefkun.setBool("secret_enabled", true);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Secret Enabled!"),
                    )
                );
                Navigator.popUntil(context, (route) => route.isFirst);
              }
            },
            tooltip: "送信",
          ),
        ],
      ),
      body:ListView(
        children: [
          Center(
            child:Text("\nPress PIN Code\n",style: TextStyle(fontSize: 30),),
          ),
          Center(child:
          PinCodeTextField(
            autofocus: true,
            controller: controller,
            hideCharacter: false,
            highlight: true,
            highlightColor: Colors.blue,
            defaultBorderColor: Colors.black,
            hasTextBorderColor: Colors.green,
            highlightPinBoxColor: Colors.lightBlueAccent,
            pinTextStyle: TextStyle(fontSize: 22.0),
            onTextChanged: (text) {
              setState(() {
                hasError = false;
              });
            },
            maxLength: 6,
            pinBoxWidth: 50,
            hasError: hasError,
          )
          ),
          Visibility(
            child: Center(
                child:Text(
                  "\n\nWrong PIN!",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.red
                  ),
                )
            ),
            visible: hasError,
          ),
        ],
      )
    );
  }
}
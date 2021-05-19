import 'package:flutter/material.dart';
class PazzleScorePage extends StatefulWidget{
  final int Steps;
  PazzleScorePage(this.Steps);
  _PazzleScorePageState createState()=>_PazzleScorePageState();
}
class _PazzleScorePageState extends State<PazzleScorePage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Score"),
      ),
      body:ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30.0),
                child: Text("Score",style: new TextStyle(
                  fontSize: 30
                )),
              ),
              InkWell(
                onTap: (){},
                child: DataTable(
                    columns: <DataColumn>[
                      DataColumn(
                        label: Text("")
                      ),
                      DataColumn(label: Text("Value"))
                    ],
                  rows: [
                    DataRow(cells: <DataCell>[
                      DataCell(Text("Steps")),
                      DataCell(Text(widget.Steps.toString()))
                    ])
                  ],
                ),
              ),


            ],
          )
        ],
      )
    ,floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Reset"),
      backgroundColor: Colors.purple,
    ),
    );
  }
}
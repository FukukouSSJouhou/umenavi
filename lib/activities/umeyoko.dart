import 'package:flutter/material.dart';
class UmeyokoPage extends StatefulWidget{
  _UmeyokoPageState createState()=>new _UmeyokoPageState();
}
class _UmeyokoPageState extends State<UmeyokoPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title:Text("ウメ横")
      ),
      body:ListView(
        children:[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Container(
                    margin: EdgeInsets.only(top:16.0),
                    child:
                Text(
                    "ウメ横",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                )),
                Container(
                    margin: EdgeInsets.only(top:47.0),
                    child:Text(
                      "注意  ウメ横は食券制です",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color:Colors.red
                        )
                    )
                ),
                Container(
                    margin: EdgeInsets.only(top:47.0,bottom: 30.0,right:20.0,left:20.0),
                    child:Text(
                        "第一体育館後方にて食券の購入、\n商品の受け取りができます。\n"
                            "(数に限りがございます。なくなり次第、\n終了となりますのでご了承ください。)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color:Colors.grey
                        )
                    )
                ),
                    InkWell(

                    child:DataTable(
                      columns: <DataColumn>[
                        DataColumn(label: Text("商品名",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    ),)),
                        DataColumn(label: Text("価格",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )))
                      ],
                      rows:<DataRow>[
                        DataRow(
                          cells:<DataCell>[
                            DataCell(Text("焼きそば",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ))),
                            DataCell(Text("￥200",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                )))
                          ]
                        ),
                        DataRow(
                            cells:<DataCell>[
                              DataCell(Text("フランクフルト",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ))),
                              DataCell(Text("￥150",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )))
                            ]
                        ),
                        DataRow(
                            cells:<DataCell>[
                              DataCell(Text("パンケーキ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ))),
                              DataCell(Text("￥200",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )))
                            ]
                        ),
                        DataRow(
                            cells:<DataCell>[
                              DataCell(Text("かき氷",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ))),
                              DataCell(Text("￥100",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )))
                            ]
                        )
                      ]
                    )
                ),
                Container(
                    margin: EdgeInsets.only(top:30.0,bottom:47.0),
                    child:Text(
                        "かき氷のシロップは、いちご、ブルーハワイ、\n抹茶からお選びください。",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color:Colors.grey
                        )
                    )
                )
              ]
          ),
        ]
      )
    );
  }
}
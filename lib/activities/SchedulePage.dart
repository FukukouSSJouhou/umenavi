import 'package:flutter/material.dart';
import 'package:flutter_timetable_view/flutter_timetable_view.dart';
class SchedulePage extends StatefulWidget{
  @override
  _SchedulePageState createState()=>new _SchedulePageState();
}
class _SchedulePageState extends State<SchedulePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("Schedule"),
      ),
      body: TimetableView(
        laneEventsList: [
          LaneEvents(
            lane: Lane(name:"行事"),
            events: [
              /*
              TableEvent(
                title:"会場オープン",
                start:TableEventTime(hour: 7,minute: 30),
                end:TableEventTime(hour: 8,minute: 0),
              ),
              TableEvent(
                title:"SHR",
                start:TableEventTime(hour: 8,minute: 20),
                end:TableEventTime(hour: 8,minute: 45)
              ),
              TableEvent(
                title: "部活動発表",
                start:TableEventTime(hour: 8,minute: 45),
                end: TableEventTime(hour: 9,minute: 0)
              ),
              TableEvent(
                title:"開祭式",
                start: TableEventTime(hour:9,minute: 0),
                end: TableEventTime(hour: 9,minute: 30),
              ),
               */
              TableEvent(
                title:"クラス企画",
                start: TableEventTime(hour: 9,minute: 30),
                end: TableEventTime(hour:10,minute: 48),
              ),
              TableEvent(
                title:"休憩",
                start: TableEventTime(hour:10,minute: 48),
                end:TableEventTime(hour:11,minute: 00),
              ),
              TableEvent(
                title:"クラス企画",
                start: TableEventTime(hour: 11,minute: 00),
                end:TableEventTime(hour: 12,minute: 18)
              ),
              TableEvent(
                title:"昼休み",
                start:TableEventTime(hour: 12,minute: 18),
                end: TableEventTime(hour:13,minute: 00),
              ),
              TableEvent(
                title:"クラス企画",
                start: TableEventTime(hour:13,minute: 00),
                end:TableEventTime(hour: 14,minute: 20),
              ),
            ]
          )
        ],
      )
    );
  }
}
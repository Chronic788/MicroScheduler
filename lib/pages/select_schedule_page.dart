
import 'package:flutter/material.dart';

import 'package:micro_scheduler/components/schedule_list_item.dart';

class SelectSchedulePage extends StatefulWidget {


  @override
  _SelectSchedulePageState createState() => _SelectSchedulePageState();

}

class _SelectSchedulePageState extends State<SelectSchedulePage> {

  List<ScheduleListItem> _schedules = new List();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text("Select a Schedule"),),

      body: ListView(
        children: _schedules.map((ScheduleListItem schedule) {
          return schedule;
        }).toList(),
      )

    );

  }

}
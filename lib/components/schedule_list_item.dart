
import 'package:flutter/material.dart';

import 'package:micro_scheduler/common/schedule.dart';

class ScheduleListItem extends StatefulWidget {

  Schedule _schedule;

  ScheduleListItem(this._schedule);

  @override
  State<StatefulWidget> createState() => _ScheduleListItemState(this._schedule);

}

class _ScheduleListItemState extends State<ScheduleListItem> {

  Schedule _schedule;

  _ScheduleListItemState(Schedule _schedule){
    this._schedule = _schedule;
  }

  @override
  Widget build(BuildContext context) {

    return new ListTile(
      title: Text(_schedule.getTitle()),
      subtitle: Text(_schedule.getDescription())
    );

  }

}
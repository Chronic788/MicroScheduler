import 'package:flutter/material.dart';

import 'shells/app_shell.dart';

void main() => runApp(MicroScheduler());

class MicroScheduler extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: AppShell(),
    );

  }

}
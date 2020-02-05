
import 'package:flutter/material.dart';

import 'package:micro_scheduler/pages/select_schedule_page.dart';
import 'package:micro_scheduler/pages/edit_schedule_page.dart';
import 'package:micro_scheduler/pages/active_schedule_page.dart';

class MicroSchedulerShell extends StatefulWidget {


  @override
  _MicroSchedulerShellState createState() => _MicroSchedulerShellState();

}

class _MicroSchedulerShellState extends State<MicroSchedulerShell> {

  int _pageIndex = 0;

  static PageController _pageController;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Micro Scheduler")
      ),

      body: PageView(

        controller: _pageController,
        physics: new NeverScrollableScrollPhysics(),
        onPageChanged: null,

        children: <Widget>[
          SelectSchedulePage(),
          EditSchedulePage(),
          ActiveSchedulePage()
        ],
      ),

    );
  }

  static void _navigate(int page) {
    _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease
    );
  }

  static navigateToSelectSchedulePage(){
    _navigate(0);
  }

  static navigateToEditSchedulePage(){
    _navigate(1);
  }

  static navigateToActiveSchedulePage(){
    _navigate(2);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

}
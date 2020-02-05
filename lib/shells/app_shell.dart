
import 'package:flutter/material.dart';

import 'package:micro_scheduler/shells/micro_scheduler_shell.dart';

class AppShell extends StatefulWidget {

  @override
  _AppShellState createState() => _AppShellState();

}

class _AppShellState extends State<AppShell>{

  static PageController _pageController;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: PageView(

        controller: _pageController,
        physics: new NeverScrollableScrollPhysics(),

        children: <Widget>[
          //Login Screen
          new MicroSchedulerShell()
        ],

      )
    );
  }
  
  static void _navigateToPage(int page) {
    _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease
    );
  }

  static void navigateToSplashScreen() {
    _navigateToPage(0);
  }

  static void navigateToLinkMeShell() {
    _navigateToPage(1);
  }
  
  @override
  void initState(){
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }

}
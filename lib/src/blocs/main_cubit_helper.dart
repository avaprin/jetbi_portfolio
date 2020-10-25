import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jetbi_portfolio/src/blocs/main_state.dart';
import 'package:jetbi_portfolio/src/ui/screens/application_feed_screen.dart';

class MainCubitHelper {
  Widget mainWidget(MainState state) {
    Widget widget;
    switch(state.toString()){
      case('InitialState'):
        {
          widget = AppFeedScreen();
          return widget;
        }
        break;
    }
  }
}
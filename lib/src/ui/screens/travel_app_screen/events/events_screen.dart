import 'package:flutter/material.dart';
import 'package:jetbi_portfolio/src/ui/widgets/travel_app_components/app_bar.dart';
import 'package:jetbi_portfolio/src/ui/widgets/travel_app_components/custom_bottom_nav_bar.dart';

import 'components/body.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "New Events"),
      body: Body(),
      bottomNavigationBar: CustomBottonNavBar(),
    );
  }
}

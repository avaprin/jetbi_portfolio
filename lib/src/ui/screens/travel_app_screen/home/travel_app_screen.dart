import 'package:flutter/material.dart';
import 'package:jetbi_portfolio/src/ui/screens/travel_app_screen/home/components/body.dart';
import 'package:jetbi_portfolio/src/ui/widgets/travel_app_components/app_bar.dart';
import 'package:jetbi_portfolio/src/ui/widgets/travel_app_components/custom_bottom_nav_bar.dart';

class TravelAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context, isTransparent: true),
      body: Body(),
      bottomNavigationBar: CustomBottonNavBar(),
    );
  }
}

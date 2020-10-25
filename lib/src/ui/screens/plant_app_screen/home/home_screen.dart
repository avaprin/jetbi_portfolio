import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jetbi_portfolio/src/plant_app_constants.dart';
import 'package:jetbi_portfolio/src/ui/screens/plant_app_screen/home/components/body.dart';
import 'package:jetbi_portfolio/src/ui/widgets/plant_app_components/my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {Navigator.of(context).pop();},
      ),
    );
  }
}

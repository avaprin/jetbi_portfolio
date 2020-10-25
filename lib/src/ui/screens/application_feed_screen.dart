import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jetbi_portfolio/src/constants.dart';
import 'package:jetbi_portfolio/src/ui/screens/covid_app_screen/covid_app_home_screen.dart';
import 'package:jetbi_portfolio/src/ui/screens/furniture_app_screen/furniture_home/furniture_home_screen.dart';
import 'package:jetbi_portfolio/src/ui/screens/plant_app_screen/home/home_screen.dart';
import 'package:jetbi_portfolio/src/ui/screens/travel_app_screen/home/travel_app_screen.dart';
import 'file:///C:/Users/jbUser/AndroidStudioProjects/jetbi_portfolio/lib/src/ui/screens/auth_screen/Welcome/welcome_screen.dart';
import 'package:jetbi_portfolio/src/ui/widgets/app_card.dart';
import 'package:jetbi_portfolio/src/ui/widgets/sidebar_menu.dart';

class AppFeedScreen extends StatefulWidget {
  AppFeedScreen({Key key}) : super(key: key);

  @override
  _AppFeedScreenState createState() => _AppFeedScreenState();
}

class _AppFeedScreenState extends State<AppFeedScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [kPrimaryColor, kSecondaryColor]),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/icons/plus.svg"),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                    onTap: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 7,horizontal: 3),
                      child: SvgPicture.asset(
                        "assets/icons/menu.svg",
                        height: 11,
                      ),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Jet Bi Portfolio",
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                AppCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return CovidAppHomeScreen();
                      }),
                    );
                  },
                  title: "COVID-19 App - Flutter UI",
                  image: "assets/images/covid_app_logo.png",
                  description:
                  "We design two pages on the home page you gonna see all statistics like how many totals affected, total recovery, total death at the bottom how you can prevent them with a hotline number. On another page, it's gonna show you each day affected statistic. ",
                ),
                AppCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return TravelAppScreen();
                      }),
                    );
                  },
                  title: "Travel App - Flutter UI",
                  image: "assets/images/travel_app_logo.png",
                  description:
                      "We design two pages one is the home page with a search bar at the top then a list of popular places at the end list of people who travel a lot. And another one is the event page provides you more details about the spots. ",
                ),
                AppCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return WelcomeScreen();
                      }),
                    );
                  },
                  title:
                      "Welcome page, Login Page and Sign up page - Flutter UI",
                  image: "assets/images/image_auth.png",
                  description:
                      "We design 3 screens first one is a welcome screen like then user open your app it shows then users have two options, if he press the login button and it just shifts him to the login screen or if he press signup button its transfers to the signup screen. ",
                ),
                AppCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return FurnitureHomeScreen();
                      }),
                    );
                  },
                  title:
                  "E-commerce App - Flutter UI",
                  image: "assets/images/furniture_app_logo.png",
                  description:
                  "On our E-commerce app UI has two pages one for the product page which has a horizontal list of categories then a list of our products. Then on the details page, it shows the price and short description of the product with the Buy Now button. ",
                ),
                AppCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }),
                    );
                  },
                  title: "Plant App - Flutter UI",
                  image: "assets/images/plant_app_logo.png",
                  description:
                      "Nice clean plant app UI using flutter, the Home page you will get search box than a horizontal list of recommended plants. At the bottom featured plans list. On the details page, a big image with its 4 icons on the right side also add to the cart button. ",
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}

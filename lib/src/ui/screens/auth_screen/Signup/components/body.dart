import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jetbi_portfolio/src/ui/screens/auth_screen/Login/login_screen.dart';
import 'package:jetbi_portfolio/src/ui/screens/auth_screen/Signup/components/background.dart';
import 'package:jetbi_portfolio/src/ui/screens/auth_screen/Signup/components/or_divider.dart';
import 'package:jetbi_portfolio/src/ui/screens/auth_screen/Signup/components/social_icon.dart';
import 'package:jetbi_portfolio/src/ui/widgets/auth_components/already_have_an_account_acheck.dart';
import 'package:jetbi_portfolio/src/ui/widgets/auth_components/rounded_button.dart';
import 'package:jetbi_portfolio/src/ui/widgets/auth_components/rounded_input_field.dart';
import 'package:jetbi_portfolio/src/ui/widgets/auth_components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/icons/signup.svg",
                      height: size.height * 0.35,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      padding: EdgeInsets.only(left: 10),
                      child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              ],
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

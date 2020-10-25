import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jetbi_portfolio/src/ui/screens/auth_screen/Login/components/background.dart';
import 'package:jetbi_portfolio/src/ui/screens/auth_screen/Signup/signup_screen.dart';
import 'package:jetbi_portfolio/src/ui/widgets/auth_components/already_have_an_account_acheck.dart';
import 'package:jetbi_portfolio/src/ui/widgets/auth_components/rounded_button.dart';
import 'package:jetbi_portfolio/src/ui/widgets/auth_components/rounded_input_field.dart';
import 'package:jetbi_portfolio/src/ui/widgets/auth_components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10,),
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
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

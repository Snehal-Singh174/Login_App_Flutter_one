import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterloginapp/components/rounded_input_field.dart';
import 'package:flutterloginapp/components/RoundedPasswordField.dart';
import 'package:flutterloginapp/components/RoundButton.dart';
import 'package:flutterloginapp/components/already_have_an_account.dart';
import 'package:flutterloginapp/screen/Login.dart';
import 'package:flutterloginapp/components/signupbackground.dart';
import 'package:flutterloginapp/components/or_divider.dart';
import 'package:flutterloginapp/components/social_icon.dart';


class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
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
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
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
                  iconSrc: "assets/icons/facebook.png",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/iconmonstr-twitter-1.png",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus-icon.png",
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

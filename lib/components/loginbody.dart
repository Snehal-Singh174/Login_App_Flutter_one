import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterloginapp/components/RoundButton.dart';
import 'package:flutterloginapp/components/RoundedPasswordField.dart';
import 'package:flutterloginapp/components/already_have_an_account.dart';
import 'package:flutterloginapp/components/loginbackground.dart';
import 'package:flutterloginapp/components/rounded_input_field.dart';
import 'package:flutterloginapp/screen/signup.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key key,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return LoginBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("LogIN",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.03,),
            SvgPicture.asset("assets/icons/login.svg",height: size.height*0.35,),
            RoundedInputField(
                  hintText: "Your Email",
                  onChanged: (value) {},
                          ),
            RoundedPasswordField(onChanged: (value) {},
            ),
            RoundedButton(text: "LOGIN",
                  press: () {},),

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

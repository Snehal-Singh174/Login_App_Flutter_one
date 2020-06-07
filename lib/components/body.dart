import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterloginapp/components/background.dart';
import 'package:flutterloginapp/constants.dart';
import 'package:flutterloginapp/components/RoundButton.dart';
import 'package:flutterloginapp/screen/Login.dart';
import 'package:flutterloginapp/screen/signup.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome To CodeWarriors", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.05,),
            SvgPicture.asset("assets/icons/chat.svg", height: size.height*0.45,),
            SizedBox(height: size.height*0.05,),
            RoundedButton(text: "LogIn", press: (){
              Navigator.push((context), MaterialPageRoute(builder: (context){return Login();},),);
            },),
            RoundedButton(text: "SignIn",color: kPrimaryLightColor, textcolor: Colors.black, press: (){
              Navigator.push((context), MaterialPageRoute(builder: (context){return SignUpScreen();},),);

            },),
          ],
        ),
      ),
    );
  }
}

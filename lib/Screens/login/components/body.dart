import 'package:flutter/material.dart';
import 'package:otlop_dawwa_delivery/Screens/SighnUp/SighnUpSCR.dart';
import 'package:otlop_dawwa_delivery/components/AlreadyHaveAnAccunt.dart';
import 'package:otlop_dawwa_delivery/components/RoundedPasswordField.dart';
import 'package:otlop_dawwa_delivery/components/roundedTextFiled.dart';
import 'package:otlop_dawwa_delivery/components/rounded_buttoms.dart';
import 'package:otlop_dawwa_delivery/constans.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "LOGIN",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: KPrimaryColor,
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),

        Image.asset(
          "lib/assets/images/login.png",
          width: size.width * 0.7,
          // width: size.width * 0.7,
        ),

        RoundedTextField(
          hinttext: "your email",
          icon: Icons.person,
          onChanged: (value) {},
        ),
        RoundedPassword(
          onChanged: (value) {},
        ),
        RoundButtoms(
          text: "login",
          press: () {},
        ),
        // SizedBox(height: size.height * 0.03,),
        AlreadyHaveAnAccount(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SighnUpScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}

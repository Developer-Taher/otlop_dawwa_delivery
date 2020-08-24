import 'package:flutter/material.dart';
import 'package:otlop_dawwa_delivery/Screens/SighnUp/Or_Divider.dart';
import 'package:otlop_dawwa_delivery/Screens/login/LoginScreen.dart';
import 'package:otlop_dawwa_delivery/components/AlreadyHaveAnAccunt.dart';
import 'package:otlop_dawwa_delivery/components/RoundedPasswordField.dart';
import 'package:otlop_dawwa_delivery/components/roundedTextFiled.dart';
import 'package:otlop_dawwa_delivery/components/rounded_buttoms.dart';
import 'package:otlop_dawwa_delivery/components/socialicon.dart';
import 'package:otlop_dawwa_delivery/constans.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
        // height: size.height * 0.5,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sighn Up",
                style: TextStyle(
                  // fontSize: 20,
                  color: KPrimaryColor,
                ),
              ),

              Image.asset(
                "lib/assets/images/sighnUp.png",
                height: size.height * 0.3,
              ),

              RoundedTextField(
                hinttext: "User Name",
                icon: Icons.person,
                onChanged: (value) {},
              ),
              // RoundedTextField(
              //   hinttext: "last name",
              //   onChanged: (value) {},
              // ),
              RoundedTextField(
                hinttext: "Email Address",
                icon: Icons.email,
                onChanged: (value) {},
              ),
              RoundedTextField(
                hinttext: "Phone Number",
                icon: Icons.phone_android,
                onChanged: (value) {},
              ),
              RoundedPassword(
                onChanged: (value) {},
              ),
              // RoundedPassword(
              //   onChanged: (value) {},
              // ),
              // RoundedTextField(
              //    hinttext: "DateOf Birth",
              //   onChanged: (value) {},
              // ),
              RoundButtoms(
                text: "Sighn Up",
                press: () {},
              ),
              AlreadyHaveAnAccount(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 5,
              ),
              OrDivider(),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialButtoms(
                    iconScr: "lib/assets/icons/facebook.png",
                    press: () {},
                  ),
                  SocialButtoms(
                    iconScr: "lib/assets/icons/twitter.png",
                    press: () {},
                  ),
                  SocialButtoms(
                    iconScr: "lib/assets/icons/google.png",
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

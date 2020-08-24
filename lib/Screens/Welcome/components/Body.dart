import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:otlop_dawwa_delivery/Screens/SighnUp/SighnUpSCR.dart';
// import 'package:otlop_dawwa_delivery/Screens/welcome/components/background.dart';
// import 'package:otlop_dawwa_delivery/Screens/welcome/components/rounded_buttoms.dart';
import 'package:otlop_dawwa_delivery/Screens/login/LoginScreen.dart';
import 'package:otlop_dawwa_delivery/components/rounded_buttoms.dart';
import 'package:otlop_dawwa_delivery/constans.dart';
// import 'package:otlop_dawwa_delivery/constans.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this size provide total height and width of our scr
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Otlop-Medicine Delevery",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: KPrimaryColor,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Image.asset(
              "lib/assets/images/unknown.png",
              width: size.width * 0.7,
            ),

            SizedBox(height: size.height * 0.02),
            // SizedBox(height: size.height * 0.01),
            RoundButtoms(
              text: "LogIn",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            RoundButtoms(
              text: "SighnUp",
              color: KPrimaryColor,
              textColor: Colors.white,
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
        ),
      ),
    );
  }
}

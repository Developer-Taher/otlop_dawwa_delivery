import 'package:flutter/material.dart';
import 'package:otlop_dawwa_delivery/constans.dart';

// import 'package:flutter_svg/flutter_svg.dart';
class SocialButtoms extends StatelessWidget {
  final String iconScr;
  final Function press;
  const SocialButtoms({
    Key key,
    this.iconScr,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 13),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: KPrimaryColor,
          ),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconScr,
          height: 30.0,
          width: 30.0,
        ),
        // child: SvgPicture.asset(
        //   "lib/assets/icons/facebook.svg",

        // ),
      ),
    );
  }
}
// "lib/assets/icons/facebook.svg"

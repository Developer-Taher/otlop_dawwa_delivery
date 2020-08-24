import 'package:flutter/material.dart';
import 'package:otlop_dawwa_delivery/constans.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccount({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don\'t Have An Account ? " : "Already Have An Account ? ",
          style: TextStyle(
              // color: KPrimaryColor,
              // fontWeight: FontWeight.bold,
              ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sighn Up" : "Sighn In",
            style: TextStyle(
              color: KPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

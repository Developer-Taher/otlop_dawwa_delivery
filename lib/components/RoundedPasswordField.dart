
import 'package:flutter/material.dart';
// import 'package:otlop_dawwa_delivery/Screens/login/components/TextFieldContainer.dart';
import 'package:otlop_dawwa_delivery/components/TextFieldContainer.dart';
import 'package:otlop_dawwa_delivery/constans.dart';

class RoundedPassword extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPassword({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: KPrimaryColor,
            // border: InputBorder.none,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: KPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

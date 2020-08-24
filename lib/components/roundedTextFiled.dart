import 'package:flutter/material.dart';
// import 'package:otlop_dawwa_delivery/Screens/login/components/TextFieldContainer.dart';
import 'package:otlop_dawwa_delivery/components/TextFieldContainer.dart';
import 'package:otlop_dawwa_delivery/constans.dart';

class RoundedTextField extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedTextField({
    Key key,
    this.hinttext,
    this.icon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon, color: KPrimaryColor),
          hintText: hinttext,
        ),
      ),
    );
  }
}

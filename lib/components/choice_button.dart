import 'package:flutter/material.dart';
import '../constants.dart';

class ChoiceButton extends StatelessWidget {
  final Function onPressed;
  final Color color;
  final String choice;

  ChoiceButton({this.onPressed, this.color, this.choice});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      onPressed: onPressed,
      color: color,
      child: Text(
        choice,
        style: TextStyle(
          fontSize: kButtonTextSize,
        ),
      ),
    );
  }
}

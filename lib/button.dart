import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final button;
  final Function onPressed;
  final Color backgroundColor;
  final int buttonHeight;

  Button(
      {this.button, this.onPressed, this.backgroundColor, this.buttonHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          padding: EdgeInsets.all(1.0)
        ),
        onPressed: onPressed,
        child: button.runtimeType == String
            ? Text(
                button,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              )
            : Icon(
                button,
                color: Colors.white,
                size: 30.0,
              ),
      ),
    );
  }
}

import 'package:calculator/calculate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 1.0, 15.0),
          alignment: Alignment.centerRight,
          color: Colors.white,
          child: Text(
            Provider.of<Calculate>(context).operand,
            style: TextStyle(fontSize: 35.0),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 1.0, 15.0),
          alignment: Alignment.centerRight,
          color: Colors.white,
          child: Text(
            Provider.of<Calculate>(context).result,
            style: TextStyle(fontSize: 50.0),
          ),
        )
      ],
    );
  }
}




import 'package:calculator/numpad.dart';
import 'package:calculator/screen.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Screen(),
          Expanded(
            child: Divider(thickness: 2.0,height: 15.0,),
          ),
          NumPad()
        ],
      ),
    );
  }
}

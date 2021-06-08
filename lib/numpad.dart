import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'calculate.dart';
import 'button.dart';

class NumPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .75,
          child: Table(
            children: [
              TableRow(
                children: [
                  Button(
                    button: 'C',
                    buttonHeight: 1,
                    backgroundColor: Colors.redAccent,
                    onPressed: (){Provider.of<Calculate>(context,listen: false).deleteAll();},
                  ),
                  Button(
                    button: Icons.backspace_outlined,
                    buttonHeight: 1,
                    backgroundColor: Colors.blueAccent,
                      onPressed: (){Provider.of<Calculate>(context,listen: false).backSpace();},
                  ),
                  Button(
                    button: '/',
                    buttonHeight: 1,
                    backgroundColor: Colors.blueAccent,
                    onPressed: (){Provider.of<Calculate>(context,listen: false).addOperator('/');},
                  ),
                ],
              ),
              TableRow(
                children: [
                  Button(
                    button: '7',
                    buttonHeight: 1,
                    backgroundColor: Colors.blueGrey,
                    onPressed: () {
                      Provider.of<Calculate>(context, listen: false)
                          .addDigit('7');
                    },
                  ),
                  Button(
                      button: '8',
                      buttonHeight: 1,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Provider.of<Calculate>(context, listen: false)
                            .addDigit('8');
                      }),
                  Button(
                      button: '9',
                      buttonHeight: 1,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Provider.of<Calculate>(context, listen: false)
                            .addDigit('9');
                      }),
                ],
              ),
              TableRow(
                children: [
                  Button(
                      button: '4',
                      buttonHeight: 1,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Provider.of<Calculate>(context, listen: false)
                            .addDigit('4');
                      }),
                  Button(
                      button: '5',
                      buttonHeight: 1,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Provider.of<Calculate>(context, listen: false)
                            .addDigit('5');
                      }),
                  Button(
                      button: '6',
                      buttonHeight: 1,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Provider.of<Calculate>(context, listen: false)
                            .addDigit('6');
                      }),
                ],
              ),
              TableRow(
                children: [
                  Button(
                      button: '1',
                      buttonHeight: 1,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Provider.of<Calculate>(context, listen: false)
                            .addDigit('1');
                      }),
                  Button(
                      button: '2',
                      buttonHeight: 1,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Provider.of<Calculate>(context, listen: false)
                            .addDigit('2');
                      }),
                  Button(
                      button: '3',
                      buttonHeight: 1,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Provider.of<Calculate>(context, listen: false)
                            .addDigit('3');
                      }),
                ],
              ),
              TableRow(
                children: [
                  Button(
                      button: '.',
                      buttonHeight: 1,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Provider.of<Calculate>(context, listen: false)
                            .addDigit('.');
                      }),
                  Button(
                      button: '0',
                      buttonHeight: 1,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Provider.of<Calculate>(context, listen: false)
                            .addZero('0');
                      }),
                  Button(
                      button: '00',
                      buttonHeight: 1,
                      backgroundColor: Colors.blueGrey,
                      onPressed: () {
                        Provider.of<Calculate>(context, listen: false)
                            .addZero('00');
                      }),
                ],
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .25,
          child: Table(
            children: [
              TableRow(
                children: [
                  Button(
                    button: Icons.clear,
                    backgroundColor: Colors.blueAccent,
                    buttonHeight: 1,
                    onPressed: (){Provider.of<Calculate>(context,listen: false).addOperator('x');},
                  ),
                ],
              ),
              TableRow(
                children: [
                  Button(
                    button: '-',
                    backgroundColor: Colors.blueAccent,
                    buttonHeight: 1,
                    onPressed: (){Provider.of<Calculate>(context,listen: false).addOperator('-');},
                  ),
                ],
              ),
              TableRow(
                children: [
                  Button(
                    button: '+',
                    backgroundColor: Colors.blueAccent,
                    buttonHeight: 1,
                    onPressed: (){Provider.of<Calculate>(context,listen: false).addOperator('+');},
                  ),
                ],
              ),
              TableRow(
                children: [
                  Button(
                    button: '=',
                    backgroundColor: Colors.redAccent,
                    buttonHeight: 2,
                    onPressed: (){Provider.of<Calculate>(context,listen: false).solve();},
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

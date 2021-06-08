import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculate extends ChangeNotifier {
  String _operand = '0';
  String _expression = '';
  String _result = '0';

  String get operand {
    return _operand;
  }

  String get result {
    return _result;
  }

  void deleteAll() {
    _operand='0';
    _result='0';
    _expression='';
    notifyListeners();
  }

  void backSpace(){
    if(_operand!='0'){
      if(_expression.length==1){
        deleteAll();
        return;
      }
      _operand=_operand.substring(0,_operand.length-1);
      _expression=_expression.substring(0,_expression.length-1);
    }
    notifyListeners();
  }

  void addDigit(String num) {
    if (_operand == '0') {
      _operand = num;
      _expression=num;
    } else {
      _operand += num;
      _expression+=num;
    }
    notifyListeners();
  }

  void addOperator(String operator) {
    if (_operand != '0') {
      _operand += operator;
      _expression+=operator;
      if(operator=='x'){
        _expression+='*';
      }
    }
    notifyListeners();
  }

  void addZero(String zero) {
    if (_operand != '0') {
      _operand += zero;
    }
    notifyListeners();
  }

  void solve(){
    try{
      Parser p=Parser();
      Expression exp=p.parse(_expression);
      print(_expression);
      ContextModel cm=ContextModel();
      _result='${exp.evaluate(EvaluationType.REAL, cm)}';
    }
    catch(e){
      _result='error';
    }
    notifyListeners();
  }
}

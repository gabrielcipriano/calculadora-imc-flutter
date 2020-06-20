import 'dart:math';

import 'package:flutter/material.dart';

class Calculator {
  final int height;
  final int weight;
  double _bmi;

  Calculator({@required this.weight, @required this.height}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String printBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    }
    return _bmi > 18.5 ? 'Normal' : 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
    return _bmi > 18.5
        ? 'You have a normal body weight. Good job!'
        : 'You have a lower than normal body weight. You can eat a bit more.';
  }
}

import 'dart:math';
import 'package:flutter/foundation.dart';

class BrainBMI {
  BrainBMI({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;

  calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  getInterpretation() {
    if (_bmi >= 25) {
      return 'You have heigher than Normal body weight. Try to exercise more!';
    } else if (_bmi >= 18.5) {
      return 'You have a Normal body weight. Good Job!';
    } else {
      return 'You have lower than Normal body weight. Try to eat a bit more!';
    }
  }
}

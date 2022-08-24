import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final height;
  final weight;

  double _bmi;

  String CalculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getTextadvice() {
    if (_bmi >= 25) {
      return 'You are so fat,You should exercise more';
    } else if (_bmi > 18.5) {
      return 'Perfect \nYou are Perfect';
    } else {
      return 'Noob eat more Or you will die';
    }
  }
}

import 'dart:math';

class BMI {
  final int height;
  final int weight;

  double _bmi;

  BMI({this.height, this.weight});

  void calculate() {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInteration() {
    return 'Your BMI result is quite low, you should eat more!';
  }
}

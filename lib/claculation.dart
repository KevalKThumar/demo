import 'dart:math';


class Calculation {
  Calculation({this.weight, this.height});

  // ignore: prefer_typing_uninitialized_variables
  final weight;
  // ignore: prefer_typing_uninitialized_variables
  final height;

   double _bmi=0;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Thodu ochu kha mara bhai..';
    } else if (_bmi > 18.5) {
      return 'saru maintain kariyu 6e ho baki..';
    } else {
      return 'Thodu khato ja bov patdo thay gayo..';
    }
  }
}

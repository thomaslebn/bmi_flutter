import 'dart:math';

class CalculatorBmi {
  CalculatorBmi(this.height, this.weight);

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Surpoids';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Poids insuffisant';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Vous avez un poids corporel supérieur à la normale.';
    } else if (_bmi >= 18.5) {
      return 'Vous avez un poids corporel normal. Bon travail!';
    } else {
      return 'Vous avez un poids corporel inférieur à la normale.';
    }
  }
}

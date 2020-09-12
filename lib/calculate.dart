import 'dart:math';

class Calculator {
  Calculator({this.height, this.bestweight});

  final int height;
  final int bestweight;

  double _bestweight;

  String calculateBestWeight() {
    _bestweight = pow(height / 100, 2) * 22;
    return _bestweight.toStringAsFixed(1);
  }

  }

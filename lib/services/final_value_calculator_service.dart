import 'package:flutter/material.dart';

class FinalValueCalculatorService {
  ValueNotifier<double> totalValue = ValueNotifier(0);

  onTotalChanged(double total) {
    totalValue.value = total;
  }
}

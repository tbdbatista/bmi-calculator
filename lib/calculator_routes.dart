import 'package:calculadora_bmi/result_page.dart';
import 'package:flutter/cupertino.dart';

import 'calculator_page.dart';

class CalculatorRoutes {
  Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => const BMICalculatorPage(),
    '/result': (context) => const ResultPage(),
  };
}

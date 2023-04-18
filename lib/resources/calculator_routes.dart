import 'package:flutter/cupertino.dart';

import '../pages/calculator_page.dart';

class CalculatorRoutes {
  Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => const BMICalculatorPage(),
  };
}

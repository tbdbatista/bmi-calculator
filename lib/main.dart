import 'package:flutter/material.dart';

import 'calculator_page.dart';

void main() {
  runApp(const IMCCalculator());
}

class IMCCalculator extends StatelessWidget {
  const IMCCalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF010E21),
      ),
      home: const BMICalculatorPage(),
    );
  }
}

import 'package:calculadora_bmi/calculator_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(IMCCalculator(route: CalculatorRoutes()));
}

class IMCCalculator extends StatelessWidget {
  const IMCCalculator({super.key, required this.route});
  final CalculatorRoutes route;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calculadora de IMC',
        theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xFF0A0E21),
          scaffoldBackgroundColor: const Color(0xFF010E21),
        ),
        initialRoute: '/home',
        routes: route.routes);
  }
}

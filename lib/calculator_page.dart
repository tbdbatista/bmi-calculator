import 'package:flutter/material.dart';

import 'calculator_container.dart';
import 'my_colors.dart';

const double bottomButtonHeight = 50;

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({super.key, required this.title});

  final String title;

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text('Calculadora IMC'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: const [
                  Expanded(child: CalculatorContainer()),
                  Expanded(child: CalculatorContainer()),
                ],
              ),
            ),
            const Expanded(child: CalculatorContainer()),
            Expanded(
              child: Row(
                children: const [
                  Expanded(child: CalculatorContainer()),
                  Expanded(child: CalculatorContainer()),
                ],
              ),
            ),
            Container(
              color: MyColors.contrastColor,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomButtonHeight,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color?>(
                      MyColors.foregroundColor),
                ),
                child: const Text('CALCULAR IMC'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

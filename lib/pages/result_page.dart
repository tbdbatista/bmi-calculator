import 'package:calculadora_bmi/components/calculator_container.dart';
import 'package:flutter/material.dart';

import '../resources/my_constants.dart';
import '../components/navigation_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretationText})
      : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretationText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text('Calculadora IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 28.0, left: 18),
            child: Text(
              'Resultado',
              style: MyStiles.biggerStyle,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CalculatorContainer(
                childContainer: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText,
                      style: const TextStyle(
                        color: MyColors.contrastColor,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        bmiResult,
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        interpretationText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          NavigationButton(
            title: 'VOLTAR',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

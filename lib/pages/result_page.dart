import 'package:calculadora_bmi/components/calculator_container.dart';
import 'package:flutter/material.dart';

import '../resources/my_constants.dart';
import '../components/navigation_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0, left: 18),
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
                      'NORMAL',
                      style: TextStyle(
                        color: MyColors.contrastColor,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '22.1',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      'Here comes the sun',
                      style: MyStiles.mainStyle,
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

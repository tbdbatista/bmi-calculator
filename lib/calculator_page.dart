import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'calculator_container.dart';
import 'icon_container.dart';
import 'my_colors.dart';

const double bottomButtonHeight = 50;
const String maleTitle = 'HOMEM';
const String femaleTitle = 'MULHER';

enum ContainerType { male, female }

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({super.key});

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  ContainerType? containerType;

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
                children: [
                  Expanded(
                    child: CalculatorContainer(
                      color: (containerType == ContainerType.male)
                          ? MyColors.secondaryColor
                          : MyColors.inactiveColor,
                      childContainer: IconContainer(
                        iconTitle: maleTitle,
                        fontAwesomeIcon: FontAwesomeIcons.mars,
                        didTap: () {
                          setState(() {
                            containerType = ContainerType.male;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: CalculatorContainer(
                      color: (containerType == ContainerType.female)
                          ? MyColors.secondaryColor
                          : MyColors.inactiveColor,
                      childContainer: IconContainer(
                        iconTitle: femaleTitle,
                        fontAwesomeIcon: FontAwesomeIcons.venus,
                        didTap: () {
                          setState(() {
                            containerType = ContainerType.female;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: CalculatorContainer(
                      childContainer: IconContainer(
                        iconTitle: 'advertisement',
                        fontAwesomeIcon: FontAwesomeIcons.adversal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                child: const Text(
                  'CALCULAR IMC',
                  style: TextStyle(
                    fontSize: 20,
                    color: MyColors.foregroundColor,
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

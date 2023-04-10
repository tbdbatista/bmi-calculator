import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'calculator_container.dart';
import 'icon_container.dart';
import 'my_colors.dart';

const double bottomButtonHeight = 50;
const String maleTitle = 'HOMEM';
const String femaleTitle = 'MULHER';

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({super.key, required this.title});

  final String title;

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  Color femaleColor = MyColors.inactiveColor;
  Color maleColor = MyColors.inactiveColor;

  void updateColor(String iconTitle) {
    if (iconTitle == maleTitle) {
      maleColor = MyColors.secondaryColor;
      femaleColor = MyColors.inactiveColor;
    } else if (iconTitle == femaleTitle) {
      maleColor = MyColors.inactiveColor;
      femaleColor = MyColors.secondaryColor;
    }
  }

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
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(maleTitle);
                      });
                    },
                    child: CalculatorContainer(
                      color: maleColor,
                      childContainer: const IconContainer(
                        iconTitle: maleTitle,
                        fontAwesomeIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  )),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(femaleTitle);
                        });
                      },
                      child: CalculatorContainer(
                        color: femaleColor,
                        childContainer: const IconContainer(
                          iconTitle: femaleTitle,
                          fontAwesomeIcon: FontAwesomeIcons.venus,
                        ),
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
                // style: ButtonStyle(
                //   foregroundColor: MaterialStateProperty.all<Color?>(
                //       MyColors.foregroundColor),
                // ),
                child: const Text(
                  'CALCULAR IMC',
                  style: TextStyle(
                    fontSize: 20,
                    color: MyColors.foregroundColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:calculadora_bmi/components/round_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/calculator_container.dart';
import '../components/icon_container.dart';
import '../common/my_constants.dart';
import '../components/navigation_button.dart';

const double bottomButtonHeight = 80;
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
  int height = 170;
  int weight = 70;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text('Calculadora IMC'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
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
                    child: CalculatorContainer(
                      childContainer: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: MyStiles.biggerStyle,
                              ),
                              const Text(
                                ' cm',
                                style: MyStiles.mainStyle,
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: const SliderThemeData(
                              activeTrackColor: MyColors.contrastColor,
                              trackHeight: 1,
                              thumbColor: MyColors.contrastColor,
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 12),
                            ),
                            child: Slider(
                              min: 120,
                              max: 220,
                              value: height.toDouble(),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.toInt();
                                });
                              },
                            ),
                          ),
                          const Text(
                            'ALTURA',
                            style: MyStiles.mainStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: CalculatorContainer(
                            childContainer: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: MyStiles.biggerStyle,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RoundButton(
                                      icon: const Icon(
                                        FontAwesomeIcons.minus,
                                        color: MyColors.contrastColor,
                                        size: 26,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          weight -= 1;
                                        });
                                      },
                                    ),
                                    RoundButton(
                                      icon: const Icon(
                                        FontAwesomeIcons.plus,
                                        color: MyColors.contrastColor,
                                        size: 25,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          weight += 1;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                const Text(
                                  'PESO',
                                  style: MyStiles.mainStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: CalculatorContainer(
                            childContainer: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  age.toString(),
                                  style: MyStiles.biggerStyle,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RoundButton(
                                      icon: const Icon(
                                        FontAwesomeIcons.minus,
                                        color: MyColors.contrastColor,
                                        size: 26,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          age -= 1;
                                        });
                                      },
                                    ),
                                    RoundButton(
                                      icon: const Icon(
                                        FontAwesomeIcons.plus,
                                        color: MyColors.contrastColor,
                                        size: 25,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          age += 1;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                const Text(
                                  'IDADE',
                                  style: MyStiles.mainStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          NavigationButton(
            title: 'CALCULAR IMC',
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, '/result');
              });
            },
          ),
        ],
      ),
    );
  }
}

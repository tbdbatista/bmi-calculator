import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'my_colors.dart';

class CalculatorContainer extends StatelessWidget {
  final Color color;
  final Widget? childContainer;

  const CalculatorContainer(
      {super.key, this.color = MyColors.secondaryColor, this.childContainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: childContainer,
    );
  }
}

class ChildContainer extends StatelessWidget {
  const ChildContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          FontAwesomeIcons.mars,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'HOMEM',
          style: TextStyle(
            fontSize: 18,
            color: MyColors.foregroundColor,
          ),
        ),
      ],
    );
  }
}

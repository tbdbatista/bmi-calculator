import 'package:flutter/cupertino.dart';

import '../resources/my_constants.dart';

class CalculatorContainer extends StatelessWidget {
  final Color color;
  final Widget? childContainer;

  const CalculatorContainer(
      {super.key, this.color = MyColors.secondaryColor, this.childContainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: childContainer,
    );
  }
}

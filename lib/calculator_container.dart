import 'package:flutter/cupertino.dart';

import 'my_colors.dart';

class CalculatorContainer extends StatelessWidget {
  final Color color;

  CalculatorContainer({super.key, this.color = MyColors.secondaryColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}

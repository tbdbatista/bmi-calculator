import 'package:calculadora_bmi/my_constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      elevation: 10,
      constraints: const BoxConstraints.tightFor(
        height: 45,
        width: 45,
      ),
      fillColor: MyColors.foregroundColor,
    );
  }

  void onPressed() {}
}

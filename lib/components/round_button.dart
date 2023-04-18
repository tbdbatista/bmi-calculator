import 'package:calculadora_bmi/resources/my_constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.icon, required this.onPressed});

  final Icon icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      // elevation: 10.0,
      constraints: const BoxConstraints.tightFor(
        height: 46,
        width: 46,
      ),
      fillColor: MyColors.foregroundColor,
      child: icon,
    );
  }
}

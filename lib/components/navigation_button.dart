import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/calculator_page.dart';
import '../common/my_constants.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.contrastColor,
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: bottomButtonHeight,
      padding: const EdgeInsets.only(bottom: 5.0),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: const TextStyle(
            color: MyColors.foregroundColor,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}

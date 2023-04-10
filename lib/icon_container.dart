import 'package:flutter/cupertino.dart';

import 'my_colors.dart';

const double iconSize = 80;
const double fontSize = 18;
const double spaceBetween = 10;

class IconContainer extends StatelessWidget {
  const IconContainer(
      {super.key, required this.sex, required this.fontAwesomeIcon});
  final String sex;
  final IconData fontAwesomeIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          fontAwesomeIcon,
          size: iconSize,
        ),
        const SizedBox(
          height: spaceBetween,
        ),
        Text(
          sex,
          style: const TextStyle(
            fontSize: fontSize,
            color: MyColors.foregroundColor,
          ),
        ),
      ],
    );
  }
}

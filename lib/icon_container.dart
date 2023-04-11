import 'package:flutter/cupertino.dart';

import 'my_colors.dart';

const double iconSize = 80;
const double fontSize = 18;
const double spaceBetween = 10;

class IconContainer extends StatelessWidget {
  const IconContainer(
      {super.key,
      required this.iconTitle,
      required this.fontAwesomeIcon,
      this.didTap});

  final String iconTitle;
  final IconData fontAwesomeIcon;
  final void Function()? didTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: didTap,
      child: Column(
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
            iconTitle,
            style: const TextStyle(
              fontSize: fontSize,
              color: MyColors.foregroundColor,
            ),
          ),
        ],
      ),
    );
  }
}

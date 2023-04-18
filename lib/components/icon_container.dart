import 'package:flutter/cupertino.dart';

import '../resources/my_constants.dart';

const double iconSize = 80;
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            fontAwesomeIcon,
            size: iconSize,
          ),
          Text(
            iconTitle,
            style: MyStiles.mainStyle,
          ),
        ],
      ),
    );
  }
}

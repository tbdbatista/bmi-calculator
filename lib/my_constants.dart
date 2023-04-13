import 'package:flutter/material.dart';

class MyColors {
  static const Color primaryColor = Color(0xFF0A0E21);
  static const Color secondaryColor = Color(0xFF1D1E38);
  static const Color foregroundColor = Colors.white;
  static Color backgroundColor = Colors.indigo.shade900;
  static const Color contrastColor = Color(0xFFEB1555);
  static const Color inactiveColor = Color(0xFF111324);
}

class MyStiles {
  static const TextStyle mainStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w900,
    color: MyColors.foregroundColor,
  );
  static const TextStyle biggerStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w900,
    color: MyColors.foregroundColor,
  );
}

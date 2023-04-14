import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text('Calculadora IMC'),
      ),
      body: const Text('Result Page'),
    );
  }
}

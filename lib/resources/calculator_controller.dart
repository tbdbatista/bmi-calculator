import 'dart:math';

class CalculatorController {
  CalculatorController();

  late double _bmi;

  String calculateBMI(int height, int weight) {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Set<String> getResult() {
    if (_bmi >= 25) {
      return {
        'OVERWEIGHT',
        'Don\'t give up! Every step you take towards a healthier lifestyle will help. Start with small changes, change your diet and take a 10 minute walk, and gradually increase the intensity and duration of your physical activity.'
      };
    } else if (_bmi >= 18.5) {
      return {
        'NORMAL',
        'You\'re on the right track! Keep up the good work with a balanced diet and regular exercise to maintain your healthy BMI.'
      };
    } else {
      return {
        'UNDERWEIGHT',
        'You can do it! Small changes in your daily routine can make a big difference in achieving a healthy BMI. Pump this muscles!'
      };
    }
  }
}

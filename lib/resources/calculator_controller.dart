import 'dart:math';

class CalculatorController {
  CalculatorController(this.height, this.weight);

  final double height;
  final double weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Don\'t give up! Every step you take towards a healthier lifestyle will help you reach your goal of achieving a healthy BMI. Start with small changes, such as cutting back on sugary drinks or taking a 10-minute walk every day, and gradually increase the intensity and duration of your physical activity.';
    } else if (_bmi >= 15) {
      return 'Congratulations. You\'re on the right track! Keep up the good work with a balanced diet and regular exercise to maintain your healthy BMI.';
    } else {
      return 'You can do it! Small changes in your daily routine can make a big difference in achieving a healthy BMI.';
    }
  }
}

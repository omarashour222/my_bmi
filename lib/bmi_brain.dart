class BmiBrain {
  final int weight;
  final double height;

  BmiBrain({required this.weight, required this.height});

  double calculateBmi() {
    double heightInMeter = height / 100;
    double bmi = weight / (heightInMeter * heightInMeter);
    return bmi;
  }

  String getTitleText() {
    double bmi = calculateBmi();
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

 String getDescriptionText(){
  double bmi = calculateBmi();
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
 } 
}

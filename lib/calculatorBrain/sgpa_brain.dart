double result = 0.0;
List growableList = [1, 2];

class SGPABrain {
  double cal = 0;
  int c = 0;
  double multiply = 1;
  double sum = 0;
  double sumOfCreditHours = 0;
  void makeListZero() {
    growableList.length = 0;
  }

  void performSum(
      int noOfSubjects, double subjectGpa, double creditHours, int counter) {
    multiply = subjectGpa * creditHours;
    sumOfCreditHours = sumOfCreditHours + creditHours;
    growableList.add(multiply);
    if (counter == noOfSubjects) {
      sGpaCalculator();
    }
  }

  void sGpaCalculator() {
    while (growableList.length != null) {
      sum = sum + growableList[c];
      c++;
    }

    result = sum / sumOfCreditHours;
  }

  String sGpaResult() {
    return result.toString();
  }
}

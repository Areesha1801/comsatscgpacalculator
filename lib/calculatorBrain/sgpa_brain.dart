double result = 0.0;
List growableList = [1, 2];

class SGPABrain {
  double cal;

  double Sum = 0;
  double sumOfCreditHours = 0;
  void makeListZero() {
    growableList.length = 0;
  }

  void PerformSum(
      int noOfSubjects, double SubjectGpa, double creditHours, int counter) {
    growableList.add(SubjectGpa * creditHours);
    if (counter == noOfSubjects) {
      SGPACalculator();
    }
  }

  void SGPACalculator() {
    int c = 0;
    while (growableList.length != null) {
      Sum = Sum + growableList[c];
      c++;
    }

    result = Sum / sumOfCreditHours;
  }

  String SGPAResult() {
    return result.toString();
  }
}

double result = 0.0;

class SGPABrain {
  double cal;
  double addingSubjectGpa = 0;
  double sumOfCreditHours = 0;

  void PerformSum(
      int noOfSubjects, int SubjectGpa, int creditHours, int counter) {
    addingSubjectGpa = (addingSubjectGpa + SubjectGpa);
    sumOfCreditHours = sumOfCreditHours + creditHours.toDouble();
    if (counter == noOfSubjects) {
      SGPACalculator();
    }
  }

  void SGPACalculator() {
    cal = (addingSubjectGpa * sumOfCreditHours);
    result = cal / sumOfCreditHours;
  }

  String SGPAResult() {
    return result.toString();
  }
}

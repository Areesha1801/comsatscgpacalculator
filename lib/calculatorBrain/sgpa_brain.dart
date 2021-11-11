double a = 0;

class SGPABrain {
  void showResult(double x) {
    a = x;
  }

  String sGpaResult() {
    return a.toStringAsFixed(2);
  }
}

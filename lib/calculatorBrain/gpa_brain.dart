double a = 0;

class GPABrain {
  void showResult(double x) {
    a = x;
  }

  String gpaResult() {
    return a.toStringAsFixed(2);
  }
}

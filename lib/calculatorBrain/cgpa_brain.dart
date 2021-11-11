double b = 0;

class CGPABrain {
  void showResult(double x) {
    b = x;
  }

  String cGpaResult() {
    return b.toStringAsFixed(2);
  }
}

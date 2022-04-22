// Anonimous Function - Fungsi yang tidak memiliki nama

int doMathOperator(int number1, int number2, Function(int, int) operator) {
  return operator(number1, number2);
}

void main(List<String> args) {
  print(doMathOperator(30, 200, (a, b) => a * b));
  
}

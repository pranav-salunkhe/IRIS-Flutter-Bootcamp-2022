import 'dart:io';

void main() {
  int N;
  print("Enter the value of N: ");
  String? inTemp = stdin.readLineSync();

  try {
    N = int.parse(inTemp!);
  } on FormatException {
    print("That was not an integer.");
    return;
  }
  fibCal(N);
}

void fibCal(int N) {
  int n1 = 0, n2 = 1, j;
  print(" $n1 ");
  print(" $n2 ");
  for (int i = 2; i <= N; i++) {
    j = i;
    i = n1 + n2;
    print(" $i ");
    n1 = n2;
    n2 = i;
    i = j;
  }
}

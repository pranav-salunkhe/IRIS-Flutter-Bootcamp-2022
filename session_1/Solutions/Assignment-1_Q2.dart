import 'dart:io';

void main(){
  int n1;
  print("Enter a number: ");
  String? inTemp = stdin.readLineSync();
  n1 = int.parse(inTemp!);
  check_semiprime(n1);
}

int check_prime(int n){
  if (n <= 1) {
    return 0;
  }
  if (n == 2 || n == 3 || n == 5) {
    return 1;
  }
  for (double i = n / 2; i > 1; --i) {
    if (n % i == 0) {
      return 0;
    }
  }
  return 1;
}

void check_semiprime(int a){
  int flag1 = 0, flag2 = 0;
  for (int j = 2; j <= a; j++) {
    if (check_prime(j) == 1 && a % j == 0) {
      if (flag1 == 0) {
        flag1 = j;
      } else {
        flag2 = j;
        break;
      }
    }
  }
  if (flag1 != 0 && flag2 != 0){
    print("Is  semiprime number");
  } else {
    print("Is not semiprime");
  }
}

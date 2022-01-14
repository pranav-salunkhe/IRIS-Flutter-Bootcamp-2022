import 'dart:io';
import 'dart:math';

void main() {
  int sum = 0;
  List<int> numlist = [];
  print("Enter the number of elements in the array ");
  num x = int.parse(stdin.readLineSync()!);
  while (x != 0) {
    numlist.add(int.parse(stdin.readLineSync()!));
    x -= 1;
  }
  for (int i = 0; i < x; i++) {
    if (CheckPrime(numlist[i])) {
      sum = sum + numlist[i];
    }
  }
  print("The sum is $sum");
  if (CheckPrime(sum)) {
    print("The sum is prime");
  } else {
    print("The sum is not prime");
  }
}

bool CheckPrime(int num) {
  if (num <= 1) {
    return false;
  }

  for (int i = 2; i <= sqrt(num); i++) {
    if (num % i == 0) {
      return false;
    } else {
      return true;
    }
  }
  return true;
}

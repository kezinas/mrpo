import 'dart:math';
import 'dart:io';

int gcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

int lcm(int a, int b) {
  return (a * b) ~/ gcd(a, b);
}

int lcmThreeNumbers(int a, int b, int c) {
  return lcm(lcm(a, b), c);
}

bool nok() {
  final random = Random();
  int a = random.nextInt(100);
  int b = random.nextInt(100);
  int c = random.nextInt(100);
  int correct = lcmThreeNumbers(a, b, c);
  stdout.write('Question: $a $b $c\nYour answer: ');
  String? ans = stdin.readLineSync();
  int answer = int.parse(ans!);
  if (answer == correct) {
    return true;
  }
  print('$answer is wrong answer ;(. Correct answer was $correct');
  return false;
}

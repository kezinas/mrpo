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

bool geom() {
  int len = Random().nextInt(6) + 5;
  int firstElement = Random().nextInt(10) + 1;
  int ratio = Random().nextInt(4) + 2;
  List<int> progression =
      List.generate(len, (index) => firstElement * pow(ratio, index).toInt());
  int missingIndex = Random().nextInt(len);
  List<String> displayedProgression =
      List.from(progression.map((e) => e.toString()));
  displayedProgression[missingIndex] = '..';
  stdout.write('Question: ');
  print(displayedProgression.join(' '));
  stdout.write('Your answer: ');
  int answer = int.parse(stdin.readLineSync()!);
  if (answer == progression[missingIndex]) {
    return true;
  }
  print(
      '$answer is wrong answer ;(. Correct answer was ${progression[missingIndex]}');
  return false;
}

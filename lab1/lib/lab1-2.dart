import 'dart:math';
import 'dart:io';

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

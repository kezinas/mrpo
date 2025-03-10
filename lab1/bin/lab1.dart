import 'package:lab1/lab1.dart' as lab1;
import 'dart:io';

void main(List<String> arguments) {
  stdout.write('Welcome to the Brain Games!\nMay I have your name?  ');
  String? name = stdin.readLineSync();
  if (name == null) {
    print('null');
  }
  print('Hello, $name!');

  String? game = '';
  int k = 0;
  while (game != '1' && game != '2') {
    print(
        'Please, choose a game!\n 1 - Find the smallest common multiple of given numbers.\n 2 - What number is missing in the progression.');
    game = stdin.readLineSync();
  }
  if (game == '1') {
    while (k < 3) {
      if (lab1.nok()) {
        print('Correct!');
        k += 1;
      } else {
        print("Let's try again, $name!");
        break;
      }
    }
  } else {
    while (k < 3) {
      if (lab1.geom()) {
        print('Correct!');
        k += 1;
      } else {
        print("Let's try again, $name!");
        break;
      }
    }
  }
  if (k == 3) {
    print('Congratulations, $name!');
  }
}

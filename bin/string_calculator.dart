import 'package:string_calculator/string_calculator.dart';

void main() {
  print('String Calculator Demo:');

  print(add('')); // 0
  print(add('1')); // 1
  print(add('1,2')); // 3
  print(add('1\n2,3')); // 6
  print(add('1, 2,, 3')); // 6

  try {
    print(add('1,-2')); // throws error
  } catch (e) {
    print(e);
  }
}

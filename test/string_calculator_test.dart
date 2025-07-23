import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  group('String Calculator', () {
    test('Empty string returns 0', () {
      expect(add(''), equals(0));
    });

    test('Single number returns itself', () {
      expect(add('5'), equals(5));
    });

    test('Two numbers', () {
      expect(add('1,2'), equals(3));
    });

    test('Multiple numbers', () {
      expect(add('1,2,3,4'), equals(10));
    });

    test('Newline as separator', () {
      expect(add('1\n2,3'), equals(6));
    });

    test('Negative number throws error', () {
      expect(() => add('1,-2'), throwsArgumentError);
    });

    test('Ignore extra commas or spaces', () {
      expect(add('1, 2,, 3'), equals(6));
    });
  });
}

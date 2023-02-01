import 'package:hisa/hisa.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Hisa p =Hisa(5);

    setUp(() {
      p = Hisa(5);
    });

    test('First Test', () {
      expect(p.toString(), equals('dimy'));
    });

    test( 'Test error' , () {
      expect(() => Hisa(1000000000000000), throwsFormatException);
    });

  });
}

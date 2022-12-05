import 'package:stack/stack.dart';
import 'package:test/test.dart';

void main() {
  group('Stack', () {
    test('push - pop test', () {
      final stack = Stack<int>(3);
      stack
        ..push(1)
        ..push(2)
        ..push(3);

      expect(stack.toList(), [1, 2, 3]);

      final lastElement = stack.pop();
      expect(lastElement, 3);

      expect(stack.size, 2);
    });

    test('peek test', () {
      final stack = Stack<int>(3);
      stack
        ..push(1)
        ..push(2)
        ..push(3);

      expect(stack.toList(), [1, 2, 3]);

      final lastElement = stack.peek();
      expect(lastElement, 3);

      expect(stack.size, 3);
    });

    test('isEmpty - isNotEmpty - size test', () {
      final stack = Stack<int>(3);
      stack
        ..push(1)
        ..push(2)
        ..push(3);

      expect(stack.size, 3);
      expect(stack.isEmpty, false);
      expect(stack.isNotEmpty, true);

      stack
        ..pop()
        ..pop()
        ..pop();

      expect(stack.size, 0);
      expect(stack.isEmpty, true);
      expect(stack.isNotEmpty, false);
    });
  });
}

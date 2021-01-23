import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../lib/src/css_like.dart';

void main() {
  group('angleOrEndAlignment', () {
    test('angleOrEndAlignment is int', () {
      const expected = const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          const Color(0xffe66465),
          const Color(0xff9198e5),
        ],
        stops: const [
          0.0,
          1.0,
        ],
      );

      int intValue = 90;
      final actual = CssLike.linearGradient(intValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('angleOrEndAlignment is angle over 360 degrees', () {
      const expected = const LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          const Color(0xffe66465),
          const Color(0xff9198e5),
        ],
        stops: const [
          0.0,
          1.0,
        ],
      );

      const angleOver360Degrees = 405.0;
      final actual =
          CssLike.linearGradient(angleOver360Degrees, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('angleOrEndAlignment is null', () {
      const expected = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xffe66465),
          const Color(0xff9198e5),
        ],
        stops: const [
          0.0,
          1.0,
        ],
      );

      final actual = CssLike.linearGradient(null, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('angleOrEndAlignment is Object', () {
      expect(() => CssLike.linearGradient(Object(), ['#e66465', '#9198e5']),
          throwsFormatException);
    });
  });
}

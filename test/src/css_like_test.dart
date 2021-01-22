import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../lib/src/css_like.dart';

void main() {
  group('angleOrEndAlignment', () {
    test('angleOrEndAlignment is null', () {
      const expected = const LinearGradient(
        begin: Alignment(-0, -1),
        end: Alignment(0, 1),
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

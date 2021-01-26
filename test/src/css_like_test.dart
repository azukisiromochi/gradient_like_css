import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../lib/src/css_like.dart';

void main() {
  group('angleOrEndAlignment', () {
    test('Angle is int', () {
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

      // ignore: omit_local_variable_types, prefer_final_locals
      int intValue = 90;
      final actual = CssLike.linearGradient(intValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is double', () {
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

      // ignore: omit_local_variable_types, prefer_final_locals, prefer_int_literals
      double doubleValue = 45.0;
      final actual =
          CssLike.linearGradient(doubleValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is angle over 360 degrees', () {
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
    test('Angle is negative number', () {
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

      // ignore: omit_local_variable_types, prefer_final_locals, prefer_int_literals
      double doubleValue = -315.0;
      final actual =
          CssLike.linearGradient(doubleValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('EndAlignment is normal value', () {
      const expected = const LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          const Color(0xffe66465),
          const Color(0xff9198e5),
        ],
        stops: const [
          0.0,
          1.0,
        ],
      );

      final actual =
          CssLike.linearGradient(Alignment.centerLeft, ['#e66465', '#9198e5']);

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

  group('colorStopList', () {
    test('colorStopList has one argument', () {
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
    test('colorStopList has two arguments', () {
      const expected = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xffe66465),
          const Color(0xff9198e5),
        ],
        stops: const [
          0.2,
          1.0,
        ],
      );

      final actual = CssLike.linearGradient(null, ['#e66465 20%', '#9198e5']);

      expect(actual, expected);
    });
    test('colorStopList has three arguments', () {
      const expected = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xffe66465),
          const Color(0xffe66465),
          const Color(0xff9198e5),
        ],
        stops: const [
          0.2,
          0.5,
          1.0,
        ],
      );

      final actual =
          CssLike.linearGradient(null, ['#e66465 20% 50%', '#9198e5']);

      expect(actual, expected);
    });
    test('colorStopList has a 3-digit Hex code', () {
      const expected = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xffee6655),
          const Color(0xffff9911),
        ],
        stops: const [
          0.0,
          1.0,
        ],
      );

      final actual = CssLike.linearGradient(null, ['#e65', '#f91']);

      expect(actual, expected);
    });
    test('colorStopList use a web color names', () {
      const expected = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xffff1493),
          const Color(0xffdcdcdc),
        ],
        stops: const [
          0.0,
          1.0,
        ],
      );

      final actual = CssLike.linearGradient(null, ['DeepPink', 'Gainsboro']);

      expect(actual, expected);
    });
    test('completion of stop', () {
      const expected = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xffffa500),
          const Color(0xffffff00),
          const Color(0xff98fb98),
          const Color(0xff00ffff),
        ],
        stops: const [
          0.2,
          0.4,
          0.6,
          0.8,
        ],
      );

      final actual = CssLike.linearGradient(
          null, ['orange 20%', 'yellow', 'paleGreen', 'cyan 80%']);

      expect(actual, expected);
    });
    test('colorStopList has an invalid value', () {
      expect(() => CssLike.linearGradient(null, ['#e66465 20', '#9198e5']),
          throwsFormatException);
      expect(() => CssLike.linearGradient(null, ['#e66465 A%', '#9198e5']),
          throwsFormatException);
    });
    test('colorStopList is null', () {
      expect(() => CssLike.linearGradient(null, null), throwsFormatException);
    });
  });
}

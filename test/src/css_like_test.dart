import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gradient_like_css/src/css_like.dart';

void main() {
  group('angleOrEndAlignment', () {
    test('Angle is int #1', () {
      const expected = LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      // ignore: omit_local_variable_types, prefer_final_locals
      int intValue = 0;
      final actual = linearGradient(intValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is int #2', () {
      const expected = LinearGradient(
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      // ignore: omit_local_variable_types, prefer_final_locals
      int intValue = 90;
      final actual = linearGradient(intValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is int #3', () {
      const expected = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      // ignore: omit_local_variable_types, prefer_final_locals
      int intValue = 180;
      final actual = linearGradient(intValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is int #4', () {
      const expected = LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      // ignore: omit_local_variable_types, prefer_final_locals
      int intValue = 270;
      final actual = linearGradient(intValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is int #5', () {
      const expected = LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      // ignore: omit_local_variable_types, prefer_final_locals
      int intValue = 360;
      final actual = linearGradient(intValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is double', () {
      const expected = LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      // ignore: omit_local_variable_types, prefer_final_locals, prefer_int_literals
      double doubleValue = 45.0;
      final actual = linearGradient(doubleValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is angle over 360 degrees', () {
      const expected = LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      const angleOver360Degrees = 405.0;
      final actual =
          linearGradient(angleOver360Degrees, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is negative number #1', () {
      const expected = LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      // ignore: omit_local_variable_types, prefer_final_locals, prefer_int_literals
      double doubleValue = -315.0;
      final actual = linearGradient(doubleValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is negative number #2', () {
      const expected = LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      // ignore: omit_local_variable_types, prefer_final_locals, prefer_int_literals
      double doubleValue = -90.0;
      final actual = linearGradient(doubleValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is negative number #3', () {
      const expected = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      // ignore: omit_local_variable_types, prefer_final_locals, prefer_int_literals
      double doubleValue = -180.0;
      final actual = linearGradient(doubleValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is negative number #4', () {
      const expected = LinearGradient(
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      // ignore: omit_local_variable_types, prefer_final_locals, prefer_int_literals
      double doubleValue = -270.0;
      final actual = linearGradient(doubleValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('Angle is negative number #5', () {
      const expected = LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      // ignore: omit_local_variable_types, prefer_final_locals, prefer_int_literals
      double doubleValue = -360.0;
      final actual = linearGradient(doubleValue, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('EndAlignment is normal value', () {
      const expected = LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      final actual =
          linearGradient(Alignment.centerLeft, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('angleOrEndAlignment is null', () {
      const expected = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      final actual = linearGradient(null, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('angleOrEndAlignment is Object', () {
      expect(
        () => linearGradient(Object(), ['#e66465', '#9198e5']),
        throwsFormatException,
      );
    });
  });

  group('colorStopList', () {
    test('colorStopList has one argument', () {
      const expected = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      final actual = linearGradient(null, ['#e66465', '#9198e5']);

      expect(actual, expected);
    });
    test('colorStopList has two arguments', () {
      const expected = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.2,
          1.0,
        ],
      );

      final actual = linearGradient(null, ['#e66465 20%', '#9198e5']);

      expect(actual, expected);
    });
    test('colorStopList has three arguments', () {
      const expected = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffe66465),
          Color(0xffe66465),
          Color(0xff9198e5),
        ],
        stops: [
          0.2,
          0.5,
          1.0,
        ],
      );

      final actual = linearGradient(null, ['#e66465 20% 50%', '#9198e5']);

      expect(actual, expected);
    });
    test('colorStopList has a 3-digit Hex code', () {
      const expected = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffee6655),
          Color(0xffff9911),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      final actual = linearGradient(null, ['#e65', '#f91']);

      expect(actual, expected);
    });
    test('colorStopList use a web color names', () {
      const expected = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffff1493),
          Color(0xffdcdcdc),
        ],
        stops: [
          0.0,
          1.0,
        ],
      );

      final actual = linearGradient(null, ['DeepPink', 'Gainsboro']);

      expect(actual, expected);
    });
    test('completion of stop', () {
      const expected = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffffa500),
          Color(0xffffff00),
          Color(0xff98fb98),
          Color(0xff00ffff),
        ],
        stops: [
          0.2,
          0.4,
          0.6,
          0.8,
        ],
      );

      final actual = linearGradient(
        null,
        ['orange 20%', 'yellow', 'paleGreen', 'cyan 80%'],
      );

      expect(actual, expected);
    });
    test('colorStopList has an invalid value', () {
      expect(
        () => linearGradient(null, ['#e66465 20', '#9198e5']),
        throwsFormatException,
      );
      expect(
        () => linearGradient(null, ['#e66465 A%', '#9198e5']),
        throwsFormatException,
      );
    });
    test('colorStopList is null', () {
      expect(() => linearGradient(null, null), throwsFormatException);
    });
  });
}

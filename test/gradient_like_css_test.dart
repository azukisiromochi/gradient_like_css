import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gradient_like_css/gradient_like_css.dart';

void main() {
  const channel = MethodChannel('gradient_like_css');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('CssLike#linearGradient()', () {
    expect(
        CssLike.linearGradient(
            90, ['#FFE5C5 17.61%', '#D2B38B 50.22%', '#F1DDC3 83.52%']),
        const LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, 1),
          colors: [
            const Color(0xffFFE5C5),
            const Color(0xffD2B38B),
            const Color(0xffF1DDC3),
          ],
          stops: const [
            0.1761,
            0.5022,
            0.8352,
          ],
        ));
  });
}

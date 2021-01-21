import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:gradient_like_css/src/web_colors.dart';

class CssLike {
  static LinearGradient linearGradient(
      double degrees, List<String> colorStops) {
    final beginDegrees = degrees + 90;
    final endDegrees = degrees - 90;

    final webColor = WebColors.of('MediumVioletRed');

    return LinearGradient(
      begin: _degreesToAlignment(beginDegrees),
      end: _degreesToAlignment(endDegrees),
      colors: [
        const Color(0xffFFE5C5),
        const Color(0xffD2B38B),
        webColor.color,
      ],
      stops: const [
        0.1761,
        0.5022,
        0.8352,
      ],
    );
  }

  static Alignment _degreesToAlignment(double degrees) {
    return Alignment(_x(degrees), _y(degrees));
  }

  static double _x(double degrees) {
    final radians = degrees / 180.0 * math.pi;
    return math.cos(radians);
  }

  static double _y(double degrees) {
    final radians = degrees / 180.0 * math.pi;
    return math.sin(radians);
  }
}

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:gradient_like_css/src/web_colors.dart';
import 'package:tuple/tuple.dart';

class CssLike {
  static LinearGradient linearGradient(
      Object angleOrEndAlignment, List<String> colorStops) {
    final endAlignment = _getEndAlignment(angleOrEndAlignment);
    final colorsAndStops = _getColorsAndStops(colorStops);

    return LinearGradient(
      begin: -endAlignment,
      end: endAlignment,
      colors: colorsAndStops.item1,
      stops: colorsAndStops.item2,
    );
  }

  static Alignment _getEndAlignment(Object angleOrEndAlignment) {
    if (angleOrEndAlignment == null) {
      return _degreesToAlignment(90);
    } else if (angleOrEndAlignment is num) {
      final angle = angleOrEndAlignment.toDouble();
      return _degreesToAlignment(angle - 90);
    } else if (angleOrEndAlignment is Alignment) {
      return angleOrEndAlignment;
    } else {
      //TODO: exception
    }
  }

  static Tuple2<List<Color>, List<double>> _getColorsAndStops(
      List<String> colorStops) {
    final colors = <Color>[];
    final stops = <double>[];

    for (final param in colorStops) {
      String colorCode, percentage1, percentage2;

      final splitParam = param.split(' ');
      if (splitParam.length > 0) {
        colorCode = splitParam[0];
      }
      if (splitParam.length > 1) {
        percentage1 = splitParam[1];
      }
      if (splitParam.length > 2) {
        percentage2 = splitParam[2];
      }
      if (splitParam.length == 0 || splitParam.length > 3) {
        //TODO: exception
      }

      final color = _codeToColor(colorCode);
      final stop1 = _percentageStringToStop(percentage1);
      if ((percentage2 ?? '').isEmpty) {
        colors.add(color);
        stops.add(stop1);
      } else {
        colors..add(color)..add(color);
        stops..add(stop1)..add(_percentageStringToStop(percentage2));
      }
    }

    if (stops.first.isNaN) {
      stops.first = 0.0;
    }
    if (stops.last.isNaN) {
      stops.last = 1.0;
    }
    stops.asMap().forEach((index, stop) {
      if (stop.isNaN) {
        final start = index;
        var end = start;
        while (stops[end + 1].isNaN) {
          end++;
        }
        final previousStop = stops[start - 1];
        final nextStop = stops[end + 1];
        final range = end - index + 1;
        final separation = (nextStop - previousStop) / (range + 1);

        for (var i = 0; i < range; i++) {
          stops[index + i] = previousStop + separation * (i + 1);
        }
      }
    });
    return Tuple2<List<Color>, List<double>>(colors, stops);
  }

  static double _percentageStringToStop(String percentageString) {
    if ((percentageString ?? '').isEmpty) {
      return double.nan;
    }
    if (!percentageString.endsWith('%')) {
      throw const FormatException(
          'Bad stop format (Allow percentage strings like "12.34%").');
    }

    try {
      final stop = double.parse(percentageString.replaceAll('%', '')) / 100;
//      assert(0.0 <= stop && stop <= 1.0);
      return stop;
    } on Exception catch (e) {
      throw const FormatException(
          'Bad stop format (Allow percentage strings like "12.34%").');
    }
  }

  static Color _codeToColor(String code) {
    final webColor = WebColors.of(code);
    if (webColor != null) {
      return webColor.color;
    }
    return Color(_makeHexCode(code));
  }

  static int _makeHexCode(String code) {
    final hexColorCodeExp = RegExp(r'^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$');
    if (hexColorCodeExp.allMatches(code).length != 1) {
      throw const FormatException(
          // ignore: lines_longer_than_80_chars
          'Bad color code format (Allow web color name or color code that start with "#").');
    }

    String hexCode;
    if (code.length == 4) {
      final r = code[1];
      final g = code[2];
      final b = code[3];
      hexCode = '0xFF$r$r$g$g$b$b';
    } else {
      hexCode = code.replaceFirst('#', '0xFF');
    }

    return int.parse(hexCode);
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

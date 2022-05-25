import 'dart:ui';

///
/// Web color names
///
/// via. [https://en.wikipedia.org/wiki/Web_colors]
///
extension WebColors on X11Colors {
  static X11Colors of(String name) {
    if (name.isEmpty) {
      return X11Colors.White;
    }
    for (final webColor in X11Colors.values) {
      if (webColor.name == name.toLowerCase()) {
        return webColor;
      }
    }
    return X11Colors.None;
  }

  ///
  /// Return the Web color name associated with the X11 color name.
  ///
  String get name {
    switch (this) {
      // Pink colors
      case X11Colors.MediumVioletRed:
        return 'mediumvioletred';
      case X11Colors.DeepPink:
        return 'deeppink';
      case X11Colors.PaleVioletRed:
        return 'palevioletred';
      case X11Colors.HotPink:
        return 'hotpink';
      case X11Colors.LightPink:
        return 'lightpink';
      case X11Colors.Pink:
        return 'pink';

      // Red colors
      case X11Colors.DarkRed:
        return 'darkred';
      case X11Colors.Red:
        return 'red';
      case X11Colors.Firebrick:
        return 'firebrick';
      case X11Colors.Crimson:
        return 'crimson';
      case X11Colors.IndianRed:
        return 'indianred';
      case X11Colors.LightCoral:
        return 'lightcoral';
      case X11Colors.Salmon:
        return 'salmon';
      case X11Colors.DarkSalmon:
        return 'darksalmon';
      case X11Colors.LightSalmon:
        return 'lightsalmon';

      // Orange colors
      case X11Colors.OrangeRed:
        return 'orangered';
      case X11Colors.Tomato:
        return 'tomato';
      case X11Colors.DarkOrange:
        return 'darkorange';
      case X11Colors.Coral:
        return 'coral';
      case X11Colors.Orange:
        return 'orange';

      // Yellow colors
      case X11Colors.DarkKhaki:
        return 'darkkhaki';
      case X11Colors.Gold:
        return 'gold';
      case X11Colors.Khaki:
        return 'khaki';
      case X11Colors.PeachPuff:
        return 'peachpuff';
      case X11Colors.Yellow:
        return 'yellow';
      case X11Colors.PaleGoldenrod:
        return 'palegoldenrod';
      case X11Colors.Moccasin:
        return 'moccasin';
      case X11Colors.PapayaWhip:
        return 'papayawhip';
      case X11Colors.LightGoldenrodYellow:
        return 'lightgoldenrodyellow';
      case X11Colors.LemonChiffon:
        return 'lemonchiffon';
      case X11Colors.LightYellow:
        return 'lightyellow';

      // Brown colors
      case X11Colors.Maroon:
        return 'maroon';
      case X11Colors.Brown:
        return 'brown';
      case X11Colors.SaddleBrown:
        return 'saddlebrown';
      case X11Colors.Sienna:
        return 'sienna';
      case X11Colors.Chocolate:
        return 'chocolate';
      case X11Colors.DarkGoldenrod:
        return 'darkgoldenrod';
      case X11Colors.Peru:
        return 'peru';
      case X11Colors.RosyBrown:
        return 'rosybrown';
      case X11Colors.Goldenrod:
        return 'goldenrod';
      case X11Colors.SandyBrown:
        return 'sandybrown';
      case X11Colors.Tan:
        return 'tan';
      case X11Colors.Burlywood:
        return 'burlywood';
      case X11Colors.Wheat:
        return 'wheat';
      case X11Colors.NavajoWhite:
        return 'navajowhite';
      case X11Colors.Bisque:
        return 'bisque';
      case X11Colors.BlanchedAlmond:
        return 'blanchedalmond';
      case X11Colors.Cornsilk:
        return 'cornsilk';

      // Green colors
      case X11Colors.DarkGreen:
        return 'darkgreen';
      case X11Colors.Green:
        return 'green';
      case X11Colors.DarkOliveGreen:
        return 'darkolivegreen';
      case X11Colors.ForestGreen:
        return 'forestgreen';
      case X11Colors.SeaGreen:
        return 'seagreen';
      case X11Colors.Olive:
        return 'olive';
      case X11Colors.OliveDrab:
        return 'olivedrab';
      case X11Colors.MediumSeaGreen:
        return 'mediumseagreen';
      case X11Colors.LimeGreen:
        return 'limegreen';
      case X11Colors.Lime:
        return 'lime';
      case X11Colors.SpringGreen:
        return 'springgreen';
      case X11Colors.MediumSpringGreen:
        return 'mediumspringgreen';
      case X11Colors.DarkSeaGreen:
        return 'darkseagreen';
      case X11Colors.MediumAquamarine:
        return 'mediumaquamarine';
      case X11Colors.YellowGreen:
        return 'yellowgreen';
      case X11Colors.LawnGreen:
        return 'lawngreen';
      case X11Colors.Chartreuse:
        return 'chartreuse';
      case X11Colors.LightGreen:
        return 'lightgreen';
      case X11Colors.GreenYellow:
        return 'greenyellow';
      case X11Colors.PaleGreen:
        return 'palegreen';

      // Cyan colors
      case X11Colors.Teal:
        return 'teal';
      case X11Colors.DarkCyan:
        return 'darkcyan';
      case X11Colors.LightSeaGreen:
        return 'lightseagreen';
      case X11Colors.CadetBlue:
        return 'cadetblue';
      case X11Colors.DarkTurquoise:
        return 'darkturquoise';
      case X11Colors.MediumTurquoise:
        return 'mediumturquoise';
      case X11Colors.Turquoise:
        return 'turquoise';
      case X11Colors.Aqua:
        return 'aqua';
      case X11Colors.Cyan:
        return 'cyan';
      case X11Colors.Aquamarine:
        return 'aquamarine';
      case X11Colors.PaleTurquoise:
        return 'paleturquoise';
      case X11Colors.LightCyan:
        return 'lightcyan';

      // Blue colors
      case X11Colors.Navy:
        return 'navy';
      case X11Colors.DarkBlue:
        return 'darkblue';
      case X11Colors.MediumBlue:
        return 'mediumblue';
      case X11Colors.Blue:
        return 'blue';
      case X11Colors.MidnightBlue:
        return 'midnightblue';
      case X11Colors.RoyalBlue:
        return 'royalblue';
      case X11Colors.SteelBlue:
        return 'steelblue';
      case X11Colors.DodgerBlue:
        return 'dodgerblue';
      case X11Colors.DeepSkyBlue:
        return 'deepskyblue';
      case X11Colors.CornflowerBlue:
        return 'cornflowerblue';
      case X11Colors.SkyBlue:
        return 'skyblue';
      case X11Colors.LightSkyBlue:
        return 'lightskyblue';
      case X11Colors.LightSteelBlue:
        return 'lightsteelblue';
      case X11Colors.LightBlue:
        return 'lightblue';
      case X11Colors.PowderBlue:
        return 'powderblue';

      // Purple violet and magenta colors
      case X11Colors.Indigo:
        return 'indigo';
      case X11Colors.Purple:
        return 'purple';
      case X11Colors.DarkMagenta:
        return 'darkmagenta';
      case X11Colors.DarkViolet:
        return 'darkviolet';
      case X11Colors.DarkSlateBlue:
        return 'darkslateblue';
      case X11Colors.BlueViolet:
        return 'blueviolet';
      case X11Colors.DarkOrchid:
        return 'darkorchid';
      case X11Colors.Fuchsia:
        return 'fuchsia';
      case X11Colors.Magenta:
        return 'magenta';
      case X11Colors.SlateBlue:
        return 'slateblue';
      case X11Colors.MediumSlateBlue:
        return 'mediumslateblue';
      case X11Colors.MediumOrchid:
        return 'mediumorchid';
      case X11Colors.MediumPurple:
        return 'mediumpurple';
      case X11Colors.Orchid:
        return 'orchid';
      case X11Colors.Violet:
        return 'violet';
      case X11Colors.Plum:
        return 'plum';
      case X11Colors.Thistle:
        return 'thistle';
      case X11Colors.Lavender:
        return 'lavender';

      // White colors
      case X11Colors.MistyRose:
        return 'mistyrose';
      case X11Colors.AntiqueWhite:
        return 'antiquewhite';
      case X11Colors.Linen:
        return 'linen';
      case X11Colors.Beige:
        return 'beige';
      case X11Colors.WhiteSmoke:
        return 'whitesmoke';
      case X11Colors.LavenderBlush:
        return 'lavenderblush';
      case X11Colors.OldLace:
        return 'oldlace';
      case X11Colors.AliceBlue:
        return 'aliceblue';
      case X11Colors.Seashell:
        return 'seashell';
      case X11Colors.GhostWhite:
        return 'ghostwhite';
      case X11Colors.Honeydew:
        return 'honeydew';
      case X11Colors.FloralWhite:
        return 'floralwhite';
      case X11Colors.Azure:
        return 'azure';
      case X11Colors.MintCream:
        return 'mintcream';
      case X11Colors.Snow:
        return 'snow';
      case X11Colors.Ivory:
        return 'ivory';
      case X11Colors.White:
        return 'white';

      // Gray and black colors
      case X11Colors.Black:
        return 'black';
      case X11Colors.DarkSlateGray:
        return 'darkslategray';
      case X11Colors.DimGray:
        return 'dimgray';
      case X11Colors.SlateGray:
        return 'slategray';
      case X11Colors.Gray:
        return 'gray';
      case X11Colors.LightSlateGray:
        return 'lightslategray';
      case X11Colors.DarkGray:
        return 'darkgray';
      case X11Colors.Silver:
        return 'silver';
      case X11Colors.LightGray:
        return 'lightgray';
      case X11Colors.Gainsboro:
        return 'gainsboro';

      // None
      case X11Colors.None:
        return 'none';
    }
  }

  ///
  /// Return the [Color] associated with the X11 color name.
  ///
  Color get color {
    switch (this) {
      // Pink colors
      case X11Colors.MediumVioletRed:
        return const Color(0xFFC71585);
      case X11Colors.DeepPink:
        return const Color(0xFFFF1493);
      case X11Colors.PaleVioletRed:
        return const Color(0xFFDB7093);
      case X11Colors.HotPink:
        return const Color(0xFFFF69B4);
      case X11Colors.LightPink:
        return const Color(0xFFFFB6C1);
      case X11Colors.Pink:
        return const Color(0xFFFFC0CB);

      // Red colors
      case X11Colors.DarkRed:
        return const Color(0xFF8B0000);
      case X11Colors.Red:
        return const Color(0xFFFF0000);
      case X11Colors.Firebrick:
        return const Color(0xFFB22222);
      case X11Colors.Crimson:
        return const Color(0xFFDC143C);
      case X11Colors.IndianRed:
        return const Color(0xFFCD5C5C);
      case X11Colors.LightCoral:
        return const Color(0xFFF08080);
      case X11Colors.Salmon:
        return const Color(0xFFFA8072);
      case X11Colors.DarkSalmon:
        return const Color(0xFFE9967A);
      case X11Colors.LightSalmon:
        return const Color(0xFFFFA07A);

      // Orange colors
      case X11Colors.OrangeRed:
        return const Color(0xFFFF4500);
      case X11Colors.Tomato:
        return const Color(0xFFFF6347);
      case X11Colors.DarkOrange:
        return const Color(0xFFFF8C00);
      case X11Colors.Coral:
        return const Color(0xFFFF7F50);
      case X11Colors.Orange:
        return const Color(0xFFFFA500);

      // Yellow colors
      case X11Colors.DarkKhaki:
        return const Color(0xFFBDB76B);
      case X11Colors.Gold:
        return const Color(0xFFFFD700);
      case X11Colors.Khaki:
        return const Color(0xFFF0E68C);
      case X11Colors.PeachPuff:
        return const Color(0xFFFFDAB9);
      case X11Colors.Yellow:
        return const Color(0xFFFFFF00);
      case X11Colors.PaleGoldenrod:
        return const Color(0xFFEEE8AA);
      case X11Colors.Moccasin:
        return const Color(0xFFFFE4B5);
      case X11Colors.PapayaWhip:
        return const Color(0xFFFFEFD5);
      case X11Colors.LightGoldenrodYellow:
        return const Color(0xFFFAFAD2);
      case X11Colors.LemonChiffon:
        return const Color(0xFFFFFACD);
      case X11Colors.LightYellow:
        return const Color(0xFFFFFFE0);

      // Brown colors
      case X11Colors.Maroon:
        return const Color(0xFF800000);
      case X11Colors.Brown:
        return const Color(0xFFA52A2A);
      case X11Colors.SaddleBrown:
        return const Color(0xFF8B4513);
      case X11Colors.Sienna:
        return const Color(0xFFA0522D);
      case X11Colors.Chocolate:
        return const Color(0xFFD2691E);
      case X11Colors.DarkGoldenrod:
        return const Color(0xFFB8860B);
      case X11Colors.Peru:
        return const Color(0xFFCD853F);
      case X11Colors.RosyBrown:
        return const Color(0xFFBC8F8F);
      case X11Colors.Goldenrod:
        return const Color(0xFFDAA520);
      case X11Colors.SandyBrown:
        return const Color(0xFFF4A460);
      case X11Colors.Tan:
        return const Color(0xFFD2B48C);
      case X11Colors.Burlywood:
        return const Color(0xFFDEB887);
      case X11Colors.Wheat:
        return const Color(0xFFF5DEB3);
      case X11Colors.NavajoWhite:
        return const Color(0xFFFFDEAD);
      case X11Colors.Bisque:
        return const Color(0xFFFFE4C4);
      case X11Colors.BlanchedAlmond:
        return const Color(0xFFFFEBCD);
      case X11Colors.Cornsilk:
        return const Color(0xFFFFF8DC);

      // Green colors
      case X11Colors.DarkGreen:
        return const Color(0xFF006400);
      case X11Colors.Green:
        return const Color(0xFF008000);
      case X11Colors.DarkOliveGreen:
        return const Color(0xFF556B2F);
      case X11Colors.ForestGreen:
        return const Color(0xFF228B22);
      case X11Colors.SeaGreen:
        return const Color(0xFF2E8B57);
      case X11Colors.Olive:
        return const Color(0xFF808000);
      case X11Colors.OliveDrab:
        return const Color(0xFF6B8E23);
      case X11Colors.MediumSeaGreen:
        return const Color(0xFF3CB371);
      case X11Colors.LimeGreen:
        return const Color(0xFF32CD32);
      case X11Colors.Lime:
        return const Color(0xFF00FF00);
      case X11Colors.SpringGreen:
        return const Color(0xFF00FF7F);
      case X11Colors.MediumSpringGreen:
        return const Color(0xFF00FA9A);
      case X11Colors.DarkSeaGreen:
        return const Color(0xFF8FBC8F);
      case X11Colors.MediumAquamarine:
        return const Color(0xFF66CDAA);
      case X11Colors.YellowGreen:
        return const Color(0xFF9ACD32);
      case X11Colors.LawnGreen:
        return const Color(0xFF7CFC00);
      case X11Colors.Chartreuse:
        return const Color(0xFF7FFF00);
      case X11Colors.LightGreen:
        return const Color(0xFF90EE90);
      case X11Colors.GreenYellow:
        return const Color(0xFFADFF2F);
      case X11Colors.PaleGreen:
        return const Color(0xFF98FB98);

      // Cyan colors
      case X11Colors.Teal:
        return const Color(0xFF008080);
      case X11Colors.DarkCyan:
        return const Color(0xFF008B8B);
      case X11Colors.LightSeaGreen:
        return const Color(0xFF20B2AA);
      case X11Colors.CadetBlue:
        return const Color(0xFF5F9EA0);
      case X11Colors.DarkTurquoise:
        return const Color(0xFF00CED1);
      case X11Colors.MediumTurquoise:
        return const Color(0xFF48D1CC);
      case X11Colors.Turquoise:
        return const Color(0xFF40E0D0);
      case X11Colors.Aqua:
        return const Color(0xFF00FFFF);
      case X11Colors.Cyan:
        return const Color(0xFF00FFFF);
      case X11Colors.Aquamarine:
        return const Color(0xFF7FFFD4);
      case X11Colors.PaleTurquoise:
        return const Color(0xFFAFEEEE);
      case X11Colors.LightCyan:
        return const Color(0xFFE0FFFF);

      // Blue colors
      case X11Colors.Navy:
        return const Color(0xFF000080);
      case X11Colors.DarkBlue:
        return const Color(0xFF00008B);
      case X11Colors.MediumBlue:
        return const Color(0xFF0000CD);
      case X11Colors.Blue:
        return const Color(0xFF0000FF);
      case X11Colors.MidnightBlue:
        return const Color(0xFF191970);
      case X11Colors.RoyalBlue:
        return const Color(0xFF4169E1);
      case X11Colors.SteelBlue:
        return const Color(0xFF4682B4);
      case X11Colors.DodgerBlue:
        return const Color(0xFF1E90FF);
      case X11Colors.DeepSkyBlue:
        return const Color(0xFF00BFFF);
      case X11Colors.CornflowerBlue:
        return const Color(0xFF6495ED);
      case X11Colors.SkyBlue:
        return const Color(0xFF87CEEB);
      case X11Colors.LightSkyBlue:
        return const Color(0xFF87CEFA);
      case X11Colors.LightSteelBlue:
        return const Color(0xFFB0C4DE);
      case X11Colors.LightBlue:
        return const Color(0xFFADD8E6);
      case X11Colors.PowderBlue:
        return const Color(0xFFB0E0E6);

      // Purple violet and magenta colors
      case X11Colors.Indigo:
        return const Color(0xFF4B0082);
      case X11Colors.Purple:
        return const Color(0xFF800080);
      case X11Colors.DarkMagenta:
        return const Color(0xFF8B008B);
      case X11Colors.DarkViolet:
        return const Color(0xFF9400D3);
      case X11Colors.DarkSlateBlue:
        return const Color(0xFF483D8B);
      case X11Colors.BlueViolet:
        return const Color(0xFF8A2BE2);
      case X11Colors.DarkOrchid:
        return const Color(0xFF9932CC);
      case X11Colors.Fuchsia:
        return const Color(0xFFFF00FF);
      case X11Colors.Magenta:
        return const Color(0xFFFF00FF);
      case X11Colors.SlateBlue:
        return const Color(0xFF6A5ACD);
      case X11Colors.MediumSlateBlue:
        return const Color(0xFF7B68EE);
      case X11Colors.MediumOrchid:
        return const Color(0xFFBA55D3);
      case X11Colors.MediumPurple:
        return const Color(0xFF9370DB);
      case X11Colors.Orchid:
        return const Color(0xFFDA70D6);
      case X11Colors.Violet:
        return const Color(0xFFEE82EE);
      case X11Colors.Plum:
        return const Color(0xFFDDA0DD);
      case X11Colors.Thistle:
        return const Color(0xFFD8BFD8);
      case X11Colors.Lavender:
        return const Color(0xFFE6E6FA);

      // White colors
      case X11Colors.MistyRose:
        return const Color(0xFFFFE4E1);
      case X11Colors.AntiqueWhite:
        return const Color(0xFFFAEBD7);
      case X11Colors.Linen:
        return const Color(0xFFFAF0E6);
      case X11Colors.Beige:
        return const Color(0xFFF5F5DC);
      case X11Colors.WhiteSmoke:
        return const Color(0xFFF5F5F5);
      case X11Colors.LavenderBlush:
        return const Color(0xFFFFF0F5);
      case X11Colors.OldLace:
        return const Color(0xFFFDF5E6);
      case X11Colors.AliceBlue:
        return const Color(0xFFF0F8FF);
      case X11Colors.Seashell:
        return const Color(0xFFFFF5EE);
      case X11Colors.GhostWhite:
        return const Color(0xFFF8F8FF);
      case X11Colors.Honeydew:
        return const Color(0xFFF0FFF0);
      case X11Colors.FloralWhite:
        return const Color(0xFFFFFAF0);
      case X11Colors.Azure:
        return const Color(0xFFF0FFFF);
      case X11Colors.MintCream:
        return const Color(0xFFF5FFFA);
      case X11Colors.Snow:
        return const Color(0xFFFFFAFA);
      case X11Colors.Ivory:
        return const Color(0xFFFFFFF0);
      case X11Colors.White:
        return const Color(0xFFFFFFFF);

      // Gray and black colors
      case X11Colors.Black:
        return const Color(0xFF000000);
      case X11Colors.DarkSlateGray:
        return const Color(0xFF2F4F4F);
      case X11Colors.DimGray:
        return const Color(0xFF696969);
      case X11Colors.SlateGray:
        return const Color(0xFF708090);
      case X11Colors.Gray:
        return const Color(0xFF808080);
      case X11Colors.LightSlateGray:
        return const Color(0xFF778899);
      case X11Colors.DarkGray:
        return const Color(0xFFA9A9A9);
      case X11Colors.Silver:
        return const Color(0xFFC0C0C0);
      case X11Colors.LightGray:
        return const Color(0xFFD3D3D3);
      case X11Colors.Gainsboro:
        return const Color(0xFFDCDCDC);

      // None ( return White )
      case X11Colors.None:
        return const Color(0xFFFFFFFF);
    }
  }
}

///
/// X11 color names
///
/// via. [https://en.wikipedia.org/wiki/X11_color_names]
///
// ignore_for_file: constant_identifier_names
enum X11Colors {
  // Pink colors
  MediumVioletRed,
  DeepPink,
  PaleVioletRed,
  HotPink,
  LightPink,
  Pink,

  // Red colors
  DarkRed,
  Red,
  Firebrick,
  Crimson,
  IndianRed,
  LightCoral,
  Salmon,
  DarkSalmon,
  LightSalmon,

  // Orange colors
  OrangeRed,
  Tomato,
  DarkOrange,
  Coral,
  Orange,

  // Yellow colors
  DarkKhaki,
  Gold,
  Khaki,
  PeachPuff,
  Yellow,
  PaleGoldenrod,
  Moccasin,
  PapayaWhip,
  LightGoldenrodYellow,
  LemonChiffon,
  LightYellow,

  // Brown colors
  Maroon,
  Brown,
  SaddleBrown,
  Sienna,
  Chocolate,
  DarkGoldenrod,
  Peru,
  RosyBrown,
  Goldenrod,
  SandyBrown,
  Tan,
  Burlywood,
  Wheat,
  NavajoWhite,
  Bisque,
  BlanchedAlmond,
  Cornsilk,

  // Green colors
  DarkGreen,
  Green,
  DarkOliveGreen,
  ForestGreen,
  SeaGreen,
  Olive,
  OliveDrab,
  MediumSeaGreen,
  LimeGreen,
  Lime,
  SpringGreen,
  MediumSpringGreen,
  DarkSeaGreen,
  MediumAquamarine,
  YellowGreen,
  LawnGreen,
  Chartreuse,
  LightGreen,
  GreenYellow,
  PaleGreen,

  // Cyan colors
  Teal,
  DarkCyan,
  LightSeaGreen,
  CadetBlue,
  DarkTurquoise,
  MediumTurquoise,
  Turquoise,
  Aqua,
  Cyan,
  Aquamarine,
  PaleTurquoise,
  LightCyan,

  // Blue colors
  Navy,
  DarkBlue,
  MediumBlue,
  Blue,
  MidnightBlue,
  RoyalBlue,
  SteelBlue,
  DodgerBlue,
  DeepSkyBlue,
  CornflowerBlue,
  SkyBlue,
  LightSkyBlue,
  LightSteelBlue,
  LightBlue,
  PowderBlue,

  // Purple, violet, and magenta colors
  Indigo,
  Purple,
  DarkMagenta,
  DarkViolet,
  DarkSlateBlue,
  BlueViolet,
  DarkOrchid,
  Fuchsia,
  Magenta,
  SlateBlue,
  MediumSlateBlue,
  MediumOrchid,
  MediumPurple,
  Orchid,
  Violet,
  Plum,
  Thistle,
  Lavender,

  // White colors
  MistyRose,
  AntiqueWhite,
  Linen,
  Beige,
  WhiteSmoke,
  LavenderBlush,
  OldLace,
  AliceBlue,
  Seashell,
  GhostWhite,
  Honeydew,
  FloralWhite,
  Azure,
  MintCream,
  Snow,
  Ivory,
  White,

  // Gray and black colors
  Black,
  DarkSlateGray,
  DimGray,
  SlateGray,
  Gray,
  LightSlateGray,
  DarkGray,
  Silver,
  LightGray,
  Gainsboro,

  // None
  None,
}

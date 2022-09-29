import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color red900 = fromHex('#ff0000');

  static Color gray600 = fromHex('#7a857e');

  static Color black9007f = fromHex('#7f000000');

  static Color gray800 = fromHex('#3d423f');

  static Color bluegray100 = fromHex('#d3d6d4');

  static Color green500 = fromHex('#32c766');

  static Color gray100 = fromHex('#f1f7f7');

  static Color greenA400 = fromHex('#00c477');

  static Color bluegray900 = fromHex('#292c2a');

  static Color bluegray800 = fromHex('#34444c');

  static Color black900 = fromHex('#000000');

  static Color bluegray401 = fromHex('#888888');

  static Color bluegray400 = fromHex('#669093');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70011 = fromHex('#11666f69');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

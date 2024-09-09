import 'package:flutter/material.dart';

class AppFonts {
  static const String fontFamily = 'Poppins';

  static const TextStyle regular = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle medium = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle italic = TextStyle(
    fontFamily: fontFamily,
    fontStyle: FontStyle.italic,
  );

  static const TextStyle boldItalic = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  );
  static const TextStyle semiBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle light = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
  );
}

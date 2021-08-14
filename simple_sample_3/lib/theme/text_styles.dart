import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTextStyle {
  // Static getters for text styles
  static TextStyle get appBarTitle => GoogleFonts.openSans(
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get cardTitle => GoogleFonts.openSans(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get cardContent => GoogleFonts.roboto(
        fontSize: 16.0,
      );
  static TextStyle get cardDetails => GoogleFonts.openSans(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
      );

  /// The default text style for [Material].
  static TextStyle get appBodyText => GoogleFonts.openSans(
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
      );

  // Google font
  static TextStyle get defaultFontStyle => GoogleFonts.openSans();
}

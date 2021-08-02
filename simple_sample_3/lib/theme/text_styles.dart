import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTextStyle {
  // Static getters for text styles
  static TextStyle get appBarTitle => GoogleFonts.openSans(
        fontSize: 18.0,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get cardTitle => GoogleFonts.openSans(
        fontSize: 16.0,
        color: AppColors.doveGray,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get cardContent => GoogleFonts.roboto(
        fontSize: 16.0,
        color: Colors.black,
      );
  static TextStyle get cardDetails => GoogleFonts.openSans(
        fontSize: 16.0,
        color: AppColors.mountainMeadow,
        fontWeight: FontWeight.w600,
      );
}

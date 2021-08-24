import 'package:flutter/material.dart';
import 'colors.dart';
import 'text_styles.dart';

class MyTheme {
  static ThemeData get ligthTheme {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: AppColors.CreateMaterialColor(AppColors.primaryColor),
      accentColor: AppColors.accentColor,
      fontFamily: AppTextStyle.fontFamily,

      elevatedButtonTheme: ElevatedButtonThemeData(
          //style: ElevatedButton.styleFrom(
          //textStyle: AppTextStyle.defaultFontStyle,
          //  ),
          ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.grey.shade300,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          // style: ElevatedButton.styleFrom(
          //   textStyle: AppTextStyle.defaultFontStyle,
          // ),
          ),
      textButtonTheme: TextButtonThemeData(
          // style: TextButton.styleFrom(
          //   textStyle: AppTextStyle.defaultFontStyle,
          // ),
          ),
      //if we need to change some of the parameters
      // textTheme: TextTheme(
      //   headline1: AppTextStyle.headline1,
      //   bodyText2: AppTextStyle.appBodyText,
      // )
    );
  }

  // on DarkMode the Swatch parameter is not working
  // https://github.com/flutter/flutter/issues/19089
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: AppColors.CreateMaterialColor(AppColors.primaryColor),
      accentColor: AppColors.accentColor,
      toggleableActiveColor:
          AppColors.CreateMaterialColor(AppColors.primaryColor).shade500,

      // this can all be copied, waiting for verification
      fontFamily: AppTextStyle.fontFamily,
      elevatedButtonTheme: ElevatedButtonThemeData(
          //     style: ElevatedButton.styleFrom(
          //   textStyle: AppTextStyle.defaultFontStyle,
          // )
          ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          // style: ElevatedButton.styleFrom(
          //   textStyle: AppTextStyle.defaultFontStyle,
          // ),
          ),
      textButtonTheme: TextButtonThemeData(
          // style: TextButton.styleFrom(
          //   textStyle: AppTextStyle.defaultFontStyle,
          // ),
          ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(),

      // copy from ligthTheme
      inputDecorationTheme: ligthTheme.inputDecorationTheme,

      //if we need to change some of the parameters
      // textTheme: TextTheme(
      //   headline1: AppTextStyle.headline1,
      //   bodyText2: AppTextStyle.appBodyText,
      // )
    );
  }
}

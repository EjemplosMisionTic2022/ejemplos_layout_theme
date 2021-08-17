import 'package:flutter/material.dart';
import 'colors.dart';
import 'text_styles.dart';

class MyTheme {
  static ThemeData get ligthTheme {
    return ThemeData(
        brightness: Brightness.light,
        primarySwatch: AppColors.CreateMaterialColor(AppColors.primaryColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: AppTextStyle.defaultFontStyle,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.grey.shade300,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: AppTextStyle.defaultFontStyle,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: AppTextStyle.defaultFontStyle,
          ),
        ),
        textTheme: TextTheme(
          headline1: AppTextStyle.appBarTitle,
          bodyText2: AppTextStyle.appBodyText,
        ));
  }

  // on DarkMode the Swatch parameter is not working
  static ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        accentColor: AppColors.AccentColorDarkTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: AppColors.AccentColorDarkTheme,
          textStyle: AppTextStyle.defaultFontStyle,
        )),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.grey.shade300,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: AppColors.AccentColorDarkTheme,
            textStyle: AppTextStyle.defaultFontStyle,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: AppColors.AccentColorDarkTheme,
            textStyle: AppTextStyle.defaultFontStyle,
          ),
        ),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(foregroundColor: Colors.white),
        textTheme: TextTheme(
          headline1: AppTextStyle.appBarTitle,
          bodyText2: AppTextStyle.appBodyText,
        ));
  }
}

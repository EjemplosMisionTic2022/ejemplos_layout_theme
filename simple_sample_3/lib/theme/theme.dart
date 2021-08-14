import 'package:flutter/material.dart';
import 'colors.dart';
import 'text_styles.dart';

class MyTheme {
  final ligthTheme2 = ThemeData.light().copyWith(
    primaryColor: Colors.blueGrey,
  );

  final darkTheme2 = ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey,
  );

  static ThemeData get ligthTheme {
    return ThemeData(
        brightness: Brightness.light,
        primarySwatch: AppColors.CreateMaterialColor(AppColors.primaryColor),

        //accentColor: AppColors.ligthPrimaryColor,
        //primaryColor: AppColors.primaryColor,
        //primaryColor: Colors.blueGrey[900],
        //accentColor: Colors.blueGrey,
        //scaffoldBackgroundColor: Colors.white,
        //fontFamily: 'Montserrat',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            //onPrimary: Colors.white,
            //primary: AppColors.ligthPrimaryColor,
            textStyle: AppTextStyle.defaultFontStyle,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.grey.shade300,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ElevatedButton.styleFrom(
            //onPrimary: Colors.blueGrey,
            //primary: Colors.blueGrey[900],
            textStyle: AppTextStyle.defaultFontStyle,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            //primary: Colors.blueGrey,
            textStyle: AppTextStyle.defaultFontStyle,
          ),
        ),
        textTheme: TextTheme(
          headline1: AppTextStyle.appBarTitle,
          bodyText2: AppTextStyle.appBodyText,
        ));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        //primarySwatch: AppColors.CreateMaterialColor(Color(0xFF607D8B)),
        accentColor: AppColors.AccentColorDarkTheme,
        //primaryColor: AppColors.darkPrimaryColor,
        //fontFamily: 'Montserrat',
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
            //onPrimary: Colors.blueGrey,
            //primary: Colors.blueGrey[900],
            textStyle: AppTextStyle.defaultFontStyle,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            //primary: Colors.white,
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

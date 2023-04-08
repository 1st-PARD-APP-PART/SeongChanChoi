import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:clone_homework_seongchanchoi/utils/text_style.dart';
import 'package:flutter/material.dart';

class Themes {
  Themes._();

  static final TextTheme _regularTextTheme = TextTheme(
    headline1: headline1,
    headline2: headline2,
    headline3: headline3,
    headline4: headline4,
    headline5: headline5,
    headline6: headline4,
    subtitle1: subtitle1,
    subtitle2: subtitle2,
    bodyText1: body1,
    bodyText2: body2,
    button: button,
  );

  static final ColorScheme _colorScheme = ColorScheme(
    primary: primaryColor,
    primaryContainer: primaryColor,
    secondary: secondaryColor,
    secondaryContainer: secondaryColor,
    surface: surfaceColor,
    background: backgroundColor,
    error: errorColor,
    onPrimary: onPrimaryColor,
    onSecondary: onSecondaryColor,
    onSurface: onSurfaceColor,
    onBackground: onBackgroundColor,
    onError: onErrorColor,
    brightness: Brightness.light,
  );

  static final ThemeData regularTheme = ThemeData(
      fontFamily: 'Inter',
      colorScheme: _colorScheme,
      textTheme: _regularTextTheme,
      focusColor: primary[500],
      highlightColor: Colors.transparent,
      primaryIconTheme: IconThemeData(
        color: onSurface[300],
      ),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.transparent,
          modalBackgroundColor: Colors.transparent),
      buttonTheme: ButtonThemeData(
        buttonColor: surfaceColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(primary[500]),
      ),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: false,
        titleTextStyle: subtitle3.copyWith(color: onSurfaceColor),
      ),
      cardTheme: CardTheme(
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: surfaceColor,
          selectedLabelStyle: _regularTextTheme.button,
          selectedItemColor: primary[300],
          unselectedLabelStyle: _regularTextTheme.button,
          unselectedItemColor: onSurface[300]),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: Colors.red,
      ));
}

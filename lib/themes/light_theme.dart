import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'fonts.dart';

TextTheme buildTextTheme(TextTheme base, String? language,
    [String font = 'Open Sans']) {
  font = 'Open Sans';
  var newBase = kTextTheme(base, language);
  return newBase
      .copyWith(
        headline3: GoogleFonts.getFont(
          font,
          textStyle: newBase.headline3!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        headline4: GoogleFonts.getFont(
          font,
          textStyle: newBase.headline4!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        headline5: GoogleFonts.getFont(
          font,
          textStyle: newBase.headline5!.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        headline6: GoogleFonts.getFont(
          font,
          textStyle: newBase.headline6!.copyWith(fontSize: 18.0),
        ),
        caption: GoogleFonts.getFont(
          font,
          textStyle: newBase.caption!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
        ),
        subtitle1: GoogleFonts.getFont(
          font,
          textStyle: newBase.subtitle1!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
          ),
        ),
        button: GoogleFonts.getFont(
          font,
          textStyle: newBase.button!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
        ),
      )
      .apply(
        displayColor: kGrey900,
        bodyColor: kGrey900,
      )
      .copyWith(
        headline1: kHeadlineTheme(newBase).headline1!.copyWith(),
        headline2: kHeadlineTheme(newBase).headline2!.copyWith(),
        headline5: kHeadlineTheme(newBase).headline5!.copyWith(),
        headline6: kHeadlineTheme(newBase).headline6!.copyWith(),
      );
}

IconThemeData customIconTheme(IconThemeData original) {
  return original.copyWith(color: kGrey900);
}

const ColorScheme kColorScheme = ColorScheme(
  primary: kTeal100,
  primaryVariant: kGrey900,
  secondary: kTeal50,
  secondaryVariant: kGrey900,
  surface: kSurfaceWhite,
  background: Colors.white,
  error: kErrorRed,
  onPrimary: kDarkBG,
  onSecondary: kGrey900,
  onSurface: kGrey900,
  onBackground: kGrey900,
  onError: kSurfaceWhite,
  brightness: Brightness.light,
);

ThemeData buildLightTheme([String fontFamily = 'Roboto']) {
  final base = ThemeData.light();

  return base.copyWith(
    brightness: Brightness.light,
    colorScheme: kColorScheme,
    buttonColor: kTeal400,
    cardColor: Colors.white,
    errorColor: kErrorRed,
    buttonTheme: const ButtonThemeData(
        colorScheme: kColorScheme,
        textTheme: ButtonTextTheme.primary,
        buttonColor: kLightPrimary),
    primaryColorLight: kLightBG,
    primaryIconTheme: customIconTheme(base.iconTheme),
    textTheme: buildTextTheme(base.textTheme, 'en', fontFamily),
    primaryTextTheme: buildTextTheme(base.primaryTextTheme, 'en', fontFamily),
    accentTextTheme: buildTextTheme(base.accentTextTheme, 'en', fontFamily),
    iconTheme: customIconTheme(base.iconTheme),
    hintColor: Colors.black26,
    backgroundColor: Colors.white,
    primaryColor: kLightPrimary,
    accentColor: kLightAccent,
    scaffoldBackgroundColor: kLightBG,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
      iconTheme: IconThemeData(
        color: kLightAccent,
      ),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    }),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black,
      labelPadding: EdgeInsets.zero,
      labelStyle: TextStyle(fontSize: 13),
      unselectedLabelStyle: TextStyle(fontSize: 13),
    ),
  );
}

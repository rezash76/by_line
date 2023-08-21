import 'package:flutter/material.dart';

class ThemeConfig {
  static String faPrimaryFontFamily = AppFont.vazir.name;
  static String enPrimaryFontFamily = AppFont.productSans.name;
  final Brightness brightness;
  final Color primaryColor;
  final Color secondaryColor;
  final Color background;
  final Color surface;
  final Color onSurface;

  ThemeConfig.light()
      : brightness = Brightness.light,
        primaryColor = const Color.fromARGB(255, 38, 70, 83),
        secondaryColor = const Color.fromARGB(255, 42, 157, 143),
        background = const Color.fromARGB(255, 228, 228, 228),
        surface = const Color.fromARGB(255, 233, 196, 106),
        onSurface = const Color.fromARGB(255, 244, 162, 97);

  ThemeConfig.dark()
      : brightness = Brightness.dark,
        primaryColor = const Color.fromARGB(234, 244, 240, 240),
        secondaryColor = Colors.black12,
        background = const Color.fromARGB(255, 1, 13, 44),
        surface = const Color.fromARGB(255, 18, 7, 35),
        onSurface = const Color.fromARGB(234, 244, 240, 240);

  ThemeData getTheme(String langCode) {
    return ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme(
          brightness: brightness,
          primary: primaryColor,
          onPrimary: primaryColor,
          secondary: primaryColor,
          onSecondary: primaryColor,
          error: Colors.red,
          onError: Colors.red,
          background: background,
          onBackground: const Color.fromARGB(255, 231, 111, 81),
          surface: surface,
          onSurface: onSurface,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.amberAccent,
          iconTheme: IconThemeData(
            color: Color.fromARGB(255, 14, 3, 54),
          ),
        ),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all<Color>(Colors.white),
          trackColor: MaterialStateProperty.all<Color>(Colors.black87),
        ),
        textTheme: langCode == 'en' ? enPrimaryTextTheme : faPrimaryTextTheme);
  }

  TextTheme get enPrimaryTextTheme => TextTheme(
        titleLarge: TextStyle(
          fontFamily: enPrimaryFontFamily,
          color: primaryColor,
        ),
        titleMedium: TextStyle(
          fontFamily: enPrimaryFontFamily,
          color: primaryColor,
        ),
        titleSmall: TextStyle(
          fontFamily: enPrimaryFontFamily,
          color: primaryColor,
        ),
        labelLarge: TextStyle(
          fontFamily: enPrimaryFontFamily,
          color: secondaryColor,
        ),
        headlineLarge: TextStyle(
          fontFamily: enPrimaryFontFamily,
          color: Colors.white,
        ),
      );

  TextTheme get faPrimaryTextTheme => TextTheme(
        titleLarge: TextStyle(
          fontFamily: faPrimaryFontFamily,
          color: primaryColor,
        ),
        titleMedium: TextStyle(
          fontFamily: faPrimaryFontFamily,
          color: primaryColor,
        ),
        titleSmall: TextStyle(
          fontFamily: faPrimaryFontFamily,
          color: primaryColor,
        ),
        labelLarge: TextStyle(
          fontFamily: faPrimaryFontFamily,
          color: secondaryColor,
        ),
        headlineLarge: TextStyle(
          fontFamily: faPrimaryFontFamily,
          color: Colors.white,
        ),
      );
}

enum AppFont { productSans, vazir }

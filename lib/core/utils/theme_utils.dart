import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

const primaryColor = Color(0xFF4CAF50);
const cardGreyColor = Color(0xffD9D9D9);

// Utility function for creating text styles
TextStyle appTextStyle(
    double fontSize, {
      FontWeight fontWeight = FontWeight.normal,
      Color color = Colors.white,
    }) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      overflow: TextOverflow.ellipsis,
    );

// Updated text theme with descriptive names
TextTheme appTextTheme = TextTheme(
  bodySmall: appTextStyle(12, fontWeight: FontWeight.w300), // Small captions
  bodyMedium: appTextStyle(14, fontWeight: FontWeight.w400), // Regular body text
  bodyLarge: appTextStyle(16, fontWeight: FontWeight.w500), // Medium body text
  titleSmall: appTextStyle(18, fontWeight: FontWeight.w500), // Subtitle text
  titleMedium: appTextStyle(20, fontWeight: FontWeight.w600), // Secondary subtitle
  headlineSmall: appTextStyle(24, fontWeight: FontWeight.w600), // Section headings
  headlineMedium: appTextStyle(28, fontWeight: FontWeight.w700), // Page titles
  headlineLarge: appTextStyle(32, fontWeight: FontWeight.w700), // Main headlines
  labelSmall: appTextStyle(10, fontWeight: FontWeight.w300), // Small overlines
  labelLarge: appTextStyle(14, fontWeight: FontWeight.w500), // Button text
);


// Define dark theme with font and additional theming

var darkTheme = FlexThemeData.dark(
  scaffoldBackground: const Color(0xFF121212),
  colors: const FlexSchemeColor(
    primary: primaryColor,
    primaryContainer: Color(0xFF81C784),
    secondary: Color(0xFF81C784),
    secondaryContainer: Color(0xFF81C784),
    tertiary: Color(0xFFFFEBCD),
    tertiaryContainer: Color(0xFF81C784),
    appBarColor: Color(0xFF81C784),
    error: Color(0xFFD32F2F),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
    elevatedButtonSchemeColor: SchemeColor.primary,
    textButtonRadius: 8.0,
    inputDecoratorRadius: 8.0,
    inputDecoratorIsFilled: true,
    inputDecoratorFillColor: Color(0xFF1E1E1E),
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  textTheme: appTextTheme,
  fontFamily: 'Montserrat', // Use the Montserrat font family
);

// Button theme examples
ButtonThemeData appButtonTheme = ButtonThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  ),
  buttonColor: primaryColor,
  textTheme: ButtonTextTheme.primary,
);

// Input field theme examples
InputDecorationTheme appInputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: const Color(0xFF1E1E1E),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(color: primaryColor),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(color: primaryColor, width: 2.0),
  ),
  labelStyle: appTextStyle(14, fontWeight: FontWeight.w400, color: Colors.grey),
  hintStyle: appTextStyle(14, fontWeight: FontWeight.w300, color: Colors.grey),
);

// Apply custom theming
ThemeData getDarkTheme() {
  return darkTheme.copyWith(
    buttonTheme: appButtonTheme,
    inputDecorationTheme: appInputDecorationTheme,
  );
}

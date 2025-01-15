import 'dart:ui';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

const primaryColor = Color(0xFFFDC82F);
const cardGreyColor=Color(0xff2e2e2e);
var darkTheme = FlexThemeData.dark(
  scaffoldBackground: const Color(0xFF121212),
  colors: const FlexSchemeColor(
    primary: Color(0xFFFDC82F),
    primaryContainer: Color(0xFF8C6D1F),
    secondary: Color(0xFFFFD54F),
    secondaryContainer: Color(0xFFB8860B),
    tertiary: Color(0xFFFFEBCD),
    tertiaryContainer: Color(0xFF8C6D1F),
    appBarColor: Color(0xFF8C6D1F),
    error: Colors.red,
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
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  textTheme: hTextTheme,
  // fontFamily: GoogleFonts.poppins().fontFamily,
);
TextStyle hTextStyle(double fontSize) =>
    TextStyle(fontSize: fontSize, overflow: TextOverflow.ellipsis);

TextTheme hTextTheme = TextTheme(
  bodySmall: hTextStyle(12),
  bodyMedium: hTextStyle(14),
  bodyLarge: hTextStyle(16),
  headlineSmall: hTextStyle(24),
  headlineMedium: hTextStyle(28),
  headlineLarge: hTextStyle(32),
  displaySmall: hTextStyle(10),
  displayMedium: hTextStyle(45),
  displayLarge: hTextStyle(36),
  labelSmall: hTextStyle(11),
  labelMedium: hTextStyle(12),
  labelLarge: hTextStyle(14),
  titleSmall: hTextStyle(14),
  titleMedium: hTextStyle(16),
  titleLarge: hTextStyle(22),
// Add other text styles as needed
);
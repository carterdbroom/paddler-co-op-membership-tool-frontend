import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData defaultTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xFF1C2321),
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFC107),
    onPrimary: Color(0xFF1C2321),
    secondary: Color(0xFF333333),
    onSecondary: Colors.white,
    tertiary: Color(0xFFFF9C00),
    onTertiary: Color(0xFF1C2321),
    error: Colors.red,
    onError: Colors.black,
    surface: Color(0xFF1F1F1F),
    onSurface: Colors.white,
  ),

  textTheme: TextTheme(
    titleLarge: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.roboto(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Color(0xFFFF9C00),
    ),
    titleSmall: GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.bold),
    bodyLarge: GoogleFonts.roboto(fontSize: 24),
    bodyMedium: GoogleFonts.roboto(fontSize: 16),
    bodySmall: GoogleFonts.roboto(fontSize: 12),
    labelLarge: GoogleFonts.roboto(fontSize: 24),
    labelMedium: GoogleFonts.roboto(fontSize: 24),
    labelSmall: GoogleFonts.roboto(fontSize: 24),
  ),
  buttonTheme: ButtonThemeData(
    padding: EdgeInsets.all(50),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
    //buttonColor: Color(value),
    //focusColor: Color(value),
    //hoverColor: Color(value),
  ),
);

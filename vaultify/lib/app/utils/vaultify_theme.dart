import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  textTheme: GoogleFonts.adventProTextTheme().copyWith(
    bodyMedium: GoogleFonts.openSans(),
  ),
  colorScheme: SeedColorScheme.fromSeeds(
    brightness: Brightness.dark,
    primary: const Color(0xFFC4E860),
    primaryKey: const Color(0xFFC4E860),
    secondary: const Color(0xFF1B2121),
    tertiary: const Color(0xFFEEFCE3),
    background: const Color(0xFFEEFCE3),
    tones: FlexTones.vivid(Brightness.light),
  ),
);

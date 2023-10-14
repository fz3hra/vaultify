import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';
import 'package:vaultify/app/router/router.dart';
import 'package:vaultify/l10n/l10n.dart';

class Vaultify extends StatelessWidget {
  const Vaultify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      // showPerformanceOverlay: true,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: SeedColorScheme.fromSeeds(
          brightness: Brightness.dark,
          primary: const Color(0xFFC4E860),
          primaryKey: const Color(0xFFC4E860),
          secondary: const Color(0xFF1B2121),
          tertiary: const Color(0xFFEEFCE3),
          background: const Color(0xFFEEFCE3),
          tones: FlexTones.vivid(Brightness.light),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

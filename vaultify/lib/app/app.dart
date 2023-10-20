import 'package:flutter/material.dart';
import 'package:vaultify/app/router/router.dart';
import 'package:vaultify/app/utils/vaultify_theme.dart';
import 'package:vaultify/l10n/l10n.dart';

class Vaultify extends StatelessWidget {
  const Vaultify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      // showPerformanceOverlay: true,
      theme: theme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

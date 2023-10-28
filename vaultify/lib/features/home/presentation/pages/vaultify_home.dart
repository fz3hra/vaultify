import 'package:flutter/material.dart';
import 'package:vaultify/app/extensions/spacing.dart';
import 'package:vaultify/features/home/presentation/widgets/page_padding.dart';
import 'package:vaultify/features/home/presentation/widgets/vaultify_bank_card.dart';
import 'package:vaultify/features/home/presentation/widgets/welcome_tile.dart';

class VaultifyHome extends StatelessWidget {
  const VaultifyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: PagePadding(
          child: Column(
            children: [
              34.vGap,
              const WelcomeTile(),
              24.vGap,
              const BankCard(),
            ],
          ),
        ),
      ),
    );
  }
}

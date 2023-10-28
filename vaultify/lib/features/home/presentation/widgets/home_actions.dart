import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:vaultify/app/extensions/context.dart';
import 'package:vaultify/app/extensions/textx.dart';

class ActionsList extends StatelessWidget {
  const ActionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _HomeActionBox(
          title: 'Send',
          color: context.colorScheme.onPrimary,
          icon: HeroIcon(
            HeroIcons.currencyDollar,
            color: context.colorScheme.onBackground,
          ),
          callback: () {},
        ),
        _HomeActionBox(
          title: 'Bill',
          color: context.colorScheme.onPrimary,
          icon: HeroIcon(
            HeroIcons.clipboardDocumentList,
            color: context.colorScheme.onBackground,
          ),
          callback: () {},
        ),
        _HomeActionBox(
          color: context.colorScheme.onPrimary,
          title: 'Mobile',
          icon: HeroIcon(
            HeroIcons.devicePhoneMobile,
            color: context.colorScheme.onBackground,
          ),
          callback: () {},
        ),
        _HomeActionBox(
          color: context.colorScheme.primary,
          title: 'More',
          icon: HeroIcon(
            HeroIcons.squares2x2,
            color: context.colorScheme.onBackground,
          ),
          callback: () {},
        ),
      ],
    );
  }
}

class _HomeActionBox extends StatelessWidget {
  const _HomeActionBox({
    required this.title,
    required this.icon,
    required this.callback,
    required this.color,
  });

  final String title;
  final Widget icon;
  final VoidCallback callback;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              icon,
              Text(
                title,
                style: context.textTheme.bodyLarge,
              ).bold,
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:vaultify/app/extensions/context.dart';
import 'package:vaultify/app/extensions/spacing.dart';
import 'package:vaultify/app/extensions/textx.dart';
import 'package:vaultify/features/home/data/models/contact.dart';
import 'package:vaultify/features/home/presentation/widgets/contact_avatar.dart';

class QuickSend extends StatelessWidget {
  const QuickSend({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: context.width,
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Quick Send',
                  style: context.textTheme.bodyLarge,
                ).bold,
                Row(
                  children: [
                    Text(
                      'See all',
                      style: context.textTheme.bodyMedium,
                    ).bold,
                    HeroIcon(
                      HeroIcons.chevronRight,
                      color: context.colorScheme.onBackground,
                      size: 14,
                    ),
                  ],
                ),
              ],
            ),
            10.vGap,
            SizedBox(
              height: 60,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  final contact = contacts[index];
                  return ContactAvatar(contact: contact);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

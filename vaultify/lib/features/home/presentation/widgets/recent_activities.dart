import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:vaultify/app/extensions/context.dart';
import 'package:vaultify/app/extensions/datex.dart';
import 'package:vaultify/app/extensions/numberx.dart';
import 'package:vaultify/app/extensions/spacing.dart';
import 'package:vaultify/app/extensions/textx.dart';
import 'package:vaultify/features/home/data/models/expenditure.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Activities',
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
        8.vGap,
        Container(
          width: context.width,
          decoration: BoxDecoration(
            color: context.colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: ListTile.divideTiles(
                context: context,

                //  color: context.colorScheme.onBackground,
                tiles: [
                  ...expenditures.take(5).map(
                        (expenditure) =>
                            _ExpenditureTile(expenditure: expenditure),
                      ),
                ],
              ).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class _ExpenditureTile extends StatelessWidget {
  const _ExpenditureTile({required this.expenditure});
  final Expenditure expenditure;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: context.colorScheme.secondary,
        child: HeroIcon(
          expenditure.reason.icon,
          color: context.colorScheme.onPrimary,
        ),
      ),
      title: Text(expenditure.reason.title, style: context.textTheme.bodyLarge)
          .bold,
      subtitle: Text(
        expenditure.date.formattedDate,
        style: context.textTheme.bodySmall,
      ),
      trailing: Text(
        expenditure.amount.currencyFormat,
        style: context.textTheme.bodyLarge,
      ).bold,
    );
  }
}

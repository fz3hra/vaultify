// ignore_for_file: constant_identifier_names

import 'package:heroicons/heroicons.dart';

class Expenditure {
  Expenditure({
    required this.reason,
    required this.amount,
    required this.date,
    this.activity = ACTIVITY.EXPENDITURE,
  });
  final REASON reason;
  final ACTIVITY activity;
  final double amount;
  final DateTime date;
}

enum ACTIVITY { INCOME, EXPENDITURE }

enum REASON {
  FOOD(HeroIcons.cake, 'Food Store'),
  TRANSPORT(HeroIcons.truck, 'Transport'),
  SUBSCRIPTION(HeroIcons.currencyDollar, 'Subscription'),
  BILL(HeroIcons.clipboardDocumentList, 'Bill'),
  ENTERTAINMENT(HeroIcons.film, 'Entertainment'),
  SHOPPING(HeroIcons.shoppingBag, 'Shopping'),
  OTHERS(HeroIcons.squares2x2, 'Others');

  const REASON(this.icon, this.title);
  final HeroIcons icon;
  final String title;
}

final List<Expenditure> expenditures = [
  Expenditure(
    reason: REASON.FOOD,
    amount: 50,
    date: DateTime(2023, 10, 5),
  ),
  Expenditure(
    reason: REASON.TRANSPORT,
    amount: 30,
    date: DateTime(2023, 10, 10),
  ),
  Expenditure(
    reason: REASON.SUBSCRIPTION,
    amount: 15,
    date: DateTime(2023, 10, 15),
  ),
  Expenditure(
    reason: REASON.BILL,
    amount: 100,
    date: DateTime(2023, 10, 20),
  ),
  Expenditure(
    reason: REASON.ENTERTAINMENT,
    amount: 60,
    date: DateTime(2023, 10, 25),
  ),
  Expenditure(
    reason: REASON.SHOPPING,
    amount: 75,
    date: DateTime(2023, 11),
  ),
  Expenditure(
    reason: REASON.OTHERS,
    amount: 20,
    date: DateTime(2023, 11, 5),
  ),
  Expenditure(
    reason: REASON.FOOD,
    amount: 45,
    date: DateTime(2023, 11, 10),
  ),
  Expenditure(
    reason: REASON.TRANSPORT,
    amount: 35,
    date: DateTime(2023, 11, 15),
  ),
  Expenditure(
    reason: REASON.SUBSCRIPTION,
    amount: 18,
    date: DateTime(2023, 11, 20),
  ),
];

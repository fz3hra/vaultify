import 'package:intl/intl.dart';

extension NumberX on num {
  String get formattedNumber => NumberFormat().format(this);
  String get currencyFormat =>
      "-${NumberFormat.currency(locale: 'en', symbol: r'$').format(this)}";
}

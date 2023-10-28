import 'package:intl/intl.dart';

extension DateX on DateTime {
  // Format date as November 20, 2020 using intl package
  String get formattedDate => DateFormat.yMMMMd().format(this);
}

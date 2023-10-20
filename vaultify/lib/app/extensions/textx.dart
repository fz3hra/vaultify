import 'package:flutter/widgets.dart';

extension TextX on Text {
  Text get bold => Text(
        data!,
        style: style?.copyWith(fontWeight: FontWeight.bold),
      );

  Text get italic => Text(
        data!,
        style: style?.copyWith(fontStyle: FontStyle.italic),
      );
  Text get underline => Text(
        data!,
        style: style?.copyWith(decoration: TextDecoration.underline),
      );

  Text get strikeThrough => Text(
        data!,
        style: style?.copyWith(decoration: TextDecoration.lineThrough),
      );
}

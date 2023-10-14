import 'package:flutter/material.dart';

class PagePadding extends StatelessWidget {
  const PagePadding({required this.child, super.key});

  factory PagePadding.sliver({required Widget child}) {
    return PagePadding(
      child: SliverToBoxAdapter(child: child),
    );
  }

  factory PagePadding.vertical({required Widget child}) {
    return PagePadding(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: child,
      ),
    );
  }

  factory PagePadding.horizontal({required Widget child}) {
    return PagePadding(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: child,
      ),
    );
  }
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: child,
    );
  }
}

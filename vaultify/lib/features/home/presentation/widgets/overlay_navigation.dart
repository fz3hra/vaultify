// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_setters_without_getters
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:vaultify/app/extensions/context.dart';

class OverlayNavigationBar extends StatelessWidget {
  const OverlayNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: navigationListener,
      builder: (context, activeIndex, _) {
        return Visibility(
          visible: activeIndex != 0,
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              height: 64,
              width: 200,
              decoration: BoxDecoration(
                color: context.colorScheme.secondary,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _NavigationAction(
                      icon: HeroIcons.chartBar,
                      callback: () {},
                      index: 1,
                    ),
                    _NavigationAction(
                      icon: HeroIcons.viewfinderCircle,
                      callback: () {},
                      index: 2,
                    ),
                    _NavigationAction(
                      icon: HeroIcons.squares2x2,
                      callback: () {},
                      index: 3,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class NavigationListener extends ValueNotifier<int> {
  NavigationListener() : super(2);

  set setIndex(int index) {
    value = index;
  }

  int get getIndex => value;
  void resetIndex() {
    value = 2;
  }
}

final navigationListener = NavigationListener();

class _NavigationAction extends StatelessWidget {
  const _NavigationAction({
    required this.icon,
    required this.callback,
    required this.index,
  });
  final HeroIcons icon;
  final VoidCallback callback;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: navigationListener,
      builder: (context, activeIndex, _) {
        final isActive = activeIndex == index;
        return InkWell(
          onTap: () => navigationListener.setIndex = index,
          child: Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: isActive
                  ? context.colorScheme.primary
                  : context.colorScheme.secondary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: HeroIcon(
                icon,
                size: 28,
                color: isActive
                    ? context.colorScheme.onBackground
                    : context.colorScheme.onPrimary,
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:vaultify/app/extensions/context.dart';
import 'package:vaultify/app/extensions/spacing.dart';
import 'package:vaultify/features/home/presentation/widgets/page_padding.dart';

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
              const _WelcomeTile(),
              24.vGap,
              const BankCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  const BankCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      clipBehavior: Clip.none,
      children: [
        ClipPath(
          clipper: BankCardClipper(),
          child: Container(
            height: 174,
            width: context.width,
            decoration: BoxDecoration(
              color: context.colorScheme.secondary,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Row(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                    width: 38,
                    height: 174 - 32,
                    decoration: BoxDecoration(
                      color: context.colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: HeroIcon(
                      HeroIcons.signal,
                      size: 28,
                      color: context.colorScheme.secondary,
                    ),
                  ),
                ),
                8.hGap,
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: -5,
          child: GestureDetector(
            onTap: () {
              //throw 'eror';
            },
            child: Container(
              height: 32,
              width: context.width / 3 - 24,
              decoration: BoxDecoration(
                color: context.colorScheme.primary,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                child: Row(
                  children: [
                    Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        color: context.colorScheme.secondary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        color: context.colorScheme.onPrimary,
                        size: 14,
                      ),
                    ),
                    3.hGap,
                    Text(
                      'Set Budget',
                      style:
                          context.textTheme.bodySmall!.copyWith(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BankCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final pointAPrime = Offset((2 * size.width) / 3, 0);
    final pointAsecond = Offset(((2 * size.width) / 3) + 24, 32);
    final pointAsecondPrime = Offset(size.width, 32);
    final pointB = Offset(size.width, size.height);
    final pointC = Offset(0, size.height);
    const pointO = Offset.zero;
    final path = Path()
      ..moveTo(pointO.dx, pointO.dy)
      ..lineTo(pointAPrime.dx, pointAPrime.dy)
      ..lineTo(pointAsecond.dx, pointAsecond.dy)
      //..arcToPoint(pointAsecondPrime, radius: const Radius.circular(22))
      ..lineTo(pointAsecondPrime.dx, pointAsecondPrime.dy)
      ..arcToPoint(pointB, radius: const Radius.circular(22))
      ..lineTo(pointC.dx, pointC.dy)
      ..lineTo(pointO.dx, pointO.dy)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class _WelcomeTile extends StatelessWidget {
  const _WelcomeTile();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1508002366005-75a695ee2d17?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1936&q=80',
          ),
        ),
        12.hGap,
        const Column(
          children: [
            Text('Faatimah Corpse'),
            Text('Welcome Back 👋'),
          ],
        ),
        const Spacer(),
        const _NotificationsAction(),
      ],
    );
  }
}

class _NotificationsAction extends StatelessWidget {
  const _NotificationsAction();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 54,
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
        child: Badge(
          offset: const Offset(5, -5),
          label: const Text('2'),
          child: HeroIcon(
            HeroIcons.bell,
            color: context.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

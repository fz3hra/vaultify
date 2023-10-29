// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_setters_without_getters
import 'package:flutter/material.dart';
import 'package:vaultify/app/extensions/context.dart';
import 'package:vaultify/app/extensions/spacing.dart';
import 'package:vaultify/features/home/presentation/widgets/home_actions.dart';
import 'package:vaultify/features/home/presentation/widgets/overlay_navigation.dart';
import 'package:vaultify/features/home/presentation/widgets/page_padding.dart';
import 'package:vaultify/features/home/presentation/widgets/quick_send.dart';
import 'package:vaultify/features/home/presentation/widgets/recent_activities.dart';
import 'package:vaultify/features/home/presentation/widgets/vaultify_bank_card.dart';
import 'package:vaultify/features/home/presentation/widgets/welcome_tile.dart';

class VaultifyHome extends StatefulWidget {
  const VaultifyHome({super.key});

  @override
  State<VaultifyHome> createState() => _VaultifyHomeState();
}

class _VaultifyHomeState extends State<VaultifyHome> {
  final ScrollController _scrollController = ScrollController();

  final double triggerPercentage = 0.8;
  final double reverseTriggerPercentage = 0.2;
  late OverlayEntry overlay;

  @override
  void initState() {
    super.initState();
  }

  void _postFrameCallback(_) {
    if (mounted) {
      overlay = _createOverLay(context);

      _showOverlayNavigation(context, overlay);
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(_postFrameCallback);

    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (details) {
          final scrollOffset = _scrollController.position.pixels;
          final maxScrollExtent = _scrollController.position.maxScrollExtent;
          final minScrollExtent = _scrollController.position.minScrollExtent;

          if (scrollOffset == 0) {
            navigationListener.resetIndex();
          } else if (scrollOffset / maxScrollExtent > triggerPercentage) {
            navigationListener.setIndex = 0;
          } else if (scrollOffset / minScrollExtent <
              reverseTriggerPercentage) {
            navigationListener.resetIndex();
          }

          return true;
        },
        child: SingleChildScrollView(
          controller: _scrollController,
          child: PagePadding(
            child: Column(
              children: [
                34.vGap,
                const WelcomeTile(),
                24.vGap,
                const BankCard(),
                24.vGap,
                const ActionsList(),
                14.vGap,
                const QuickSend(),
                14.vGap,
                const RecentActivities(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showOverlayNavigation(
    BuildContext context,
    OverlayEntry content,
  ) async {
    Future<void>.delayed(const Duration(milliseconds: 500), () {
      context.showOverlay(
        content,
      );
    });
  }

  OverlayEntry _createOverLay(BuildContext context) {
    final position = Offset((context.width - 200) / 2, 28);
    return OverlayEntry(
      builder: (context) => Positioned(
        bottom: position.dy,
        left: position.dx,
        child: const OverlayNavigationBar(),
      ),
    );
  }
}

import 'package:go_router/go_router.dart';
import 'package:vaultify/features/home/presentation/pages/vaultify_home.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const VaultifyHome(),
    ),
  ],
);

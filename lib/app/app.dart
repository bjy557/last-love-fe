import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router.dart';
import 'theme.dart';

part 'app.g.dart';

@Riverpod(keepAlive: true)
GoRouterHolder appRouter(Ref ref) {
  return GoRouterHolder(buildAppRouter(ref));
}

/// Wrapper so we can stash the GoRouter under a typed provider key.
class GoRouterHolder {
  GoRouterHolder(this.router);
  final dynamic router;
}

class LastLoveApp extends ConsumerWidget {
  const LastLoveApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final holder = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'Last Love',
      theme: buildLastLoveTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: holder.router,
      // Cap the system text scaler so very high accessibility settings still
      // render. 40+ users often raise font size to ~130-150% which we want
      // to respect without breaking layouts.
      builder: (context, child) {
        final scaler = MediaQuery.textScalerOf(context);
        final clamped = scaler.clamp(minScaleFactor: 1.0, maxScaleFactor: 1.5);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: clamped),
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}

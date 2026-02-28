import 'package:collectionn_widgets/config/router/app_router.dart';
import 'package:collectionn_widgets/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:collectionn_widgets/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectColor = ref.watch(selectedColorProvider);
    final isDarkmode = ref.watch(isDarkProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
        selectedColor: selectColor,
        isDarkmode: isDarkmode,
      ).getTheme(),
      title: 'Collection Widgets',
    );
  }
}

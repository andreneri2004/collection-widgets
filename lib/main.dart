import 'package:collectionn_widgets/config/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:collectionn_widgets/config/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      title: 'Collection Widgets',
    );
  }
}

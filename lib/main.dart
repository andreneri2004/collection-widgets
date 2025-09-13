import 'package:collectionn_widgets/config/theme/app_theme.dart';
import 'package:collectionn_widgets/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).getTheme(),
      title: 'Collection Widgets',
      home: HomeScreen()
    );
  }
}
